/* AES device which talks to the rest of Prazor using TLM 2.0 Transactions.
File is based on src/io/uart64_cbg.cpp, with area and power taken from src/memories/sram64_cbg.cpp */

#include "aes_dev.h"
#include "aes_lib.h"



// Constructor
aes_dev::aes_dev(sc_module_name moduleName)
  : sc_module(moduleName)
  , pw_module()
  , read_bus_tracker(this)
{
  // Bind to the target socket. The b_access method pointed to will 
  // be invoked when port0's 8-byte address is read or written to.
  port0.register_b_transport(this, &aes_dev::b_access); 
  
  // Clear all the state variables used for AES encryption.
  reset(); 

  // Simulate the area. Arbitrary area currently. 
  set_fixed_area(pw_area(13359, PW_squm));

  // Reset AES power parameters such as how much power is used for reads and writes.
  recompute_aes_pvt_parameters();
}


void aes_dev::b_access(int id, PRAZOR_GP_T &trans, sc_time &delay_)
{
  // Get the transaction time.
  const sc_time transTime = trans.ltd.point();
  // Get the transaction type.
  const tlm::tlm_command transCmd = trans.get_command();
    
  // Set up a power agent to record the amount of energy used for this transaction.
  pw_agent_record pwAgent = trans.pw_log_hop(
      this, 
      (transCmd == tlm::TLM_READ_COMMAND ? PW_TGP_DATA: PW_TGP_NOFIELDS) | PW_TGP_ACCT_CKP,  
      &read_bus_tracker
  );

  // This device only supports reads and writes.
  bool isRead; 
  switch (transCmd) {
    case tlm::TLM_READ_COMMAND: {
      //the transaction received is a read
      trans.ltd += readLatency_;
      pwAgent.record_energy_use(readEnergy_, &trans);
      isRead = true;
      break;
    }
    case tlm::TLM_WRITE_COMMAND: {
      //the transaction received is a write
      trans.ltd += writeLatency_;
      pwAgent.record_energy_use(writeEnergy_, &trans);
      isRead = false;
      break;
    }
    default: {
      // Error, unknown operation type.
      trans.set_response_status(tlm::TLM_COMMAND_ERROR_RESPONSE);
      return;
    }
  }

  
  // Handle reads/writes to specific registers based on the address passed in the transaction.
  uint32_t *const ptr = (uint32_t*)trans.get_data_ptr();
  switch ((trans.get_address() - AES_BASE_ADDR) / 8) {
    // PIO_STATUS register
    case 0: {
      if (isRead) {
        *ptr = 0;
      } 
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    // PIO_CTRL register
    case 2: {
      // Writing 0 to a specific bit resets the module, writing 1 starts it.
      if (isRead) {
        *ptr = (running_ & 0x3) << 4;
      } else {
        bool isRunning = (*ptr >> 4) & 0x3;
        if (isRunning) {
          running_ = true;
        } else {
          reset();
        }
      }
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    // PIO_TX_LO register
    case 8: {
      if (isRead) {
        *ptr = txLo_;
        txLo_ = 0;
      }
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    // PIO_TX_HI register
    case 9: {
      if (isRead) {
        *ptr = txHi_;
        txHi_ = 0;
      }
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    // PIO_TX_ST register
    case 10: {
      if (isRead) {
        Buffer *buf = &b[currentRd_];
        if (buf->wr != 16) {
          *ptr = 0;
        } else {
          const unsigned delta = (transTime - buf->time) / cycleLatency_;
          if (delta < 20) {
            *ptr = 0;
          } else {
            // cycleEnergy_ is an estimate of the energy consumed on each
            // Zynq clock cycle, this energy is only used when the device
            // is encrypting data - we record this every 20 cycles,
            // whenever a block finishes processing.
            pwAgent.record_energy_use(cycleEnergy_ * 20, &trans);
            
            if (buf->rd == 0) {
              AES_encrypt_block(rk_, iv_, buf->data);
              txLo_ = *((uint32_t *)(buf->data + 0));
              txHi_ = *((uint32_t *)(buf->data + 4));
              *ptr = 1 << 8;
              buf->rd += 8;
            } else if (buf->rd == 8) {
              txLo_ = *((uint32_t *)(buf->data + 8));
              txHi_ = *((uint32_t *)(buf->data + 12));
              *ptr = 1 << 8;
              buf->wr = 0;
              buf->rd = 0;
              currentRd_ = !currentRd_;
            }
          }
        }
      }
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    // PIO_RX_LO register
    case 12: {
      if (!isRead) {
        rxLo_ = *ptr;
        rxReady_ |= 1 << 0;
        handle_noc_rx(transTime);
      }
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    // PIO_RX_HI register
    case 13: {
      if (!isRead) {
        rxHi_ = *ptr;
        rxReady_ |= 1 << 1;
        handle_noc_rx(transTime);
      }
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    // PIO_RX_ST register
    case 14: {
      if (isRead) {
        *ptr = rx_ready() ? (1 << 8) : 0;
      } else {
        rxCmd_ = *ptr & 0xFF;
        rxReady_ |= 1 << 2;
        handle_noc_rx(transTime);
      }
      trans.set_response_status(tlm::TLM_OK_RESPONSE);
      return;
    }
    default: {
      trans.set_response_status(tlm::TLM_ADDRESS_ERROR_RESPONSE);
      return;
    }
  }
} //end b_access


/* Begin helper methods */

void aes_dev::reset()
{
  running_ = false;
  rxReady_ = 0;
  rxLo_ = 0;
  rxHi_ = 0;
  rxCmd_ = 0;
  rkPtr_ = 0;
  ivPtr_ = 0;
  currentWr_ = 0;
  currentRd_ = 0;
  memset(b, 0, sizeof(b));
}

bool aes_dev::rx_ready()
{
  if (rxReady_ != 0) {
    return false;
  }
  return b[currentWr_].wr != 16;
}

void aes_dev::handle_noc_rx(const sc_time &time)
{
  // Bail out if device is not running.
  if (!running_) {
    return;
  }

  // Check if all data was read & clear the flag.
  if ((rxReady_ & 0x5) != 0x5) {
    return;
  } 
  rxReady_ = 0;
  
  // Read the 64-bit input.
  const uint64_t data = ((uint64_t)rxHi_ << 32ull) | ((uint64_t)rxLo_ << 0ull);
  
  // Handle individual commands.
  switch (rxCmd_) {
    // SET_RK
    case 0: {
      // Read round key until buffer is full.
      if (rkPtr_ < sizeof(rk_)) {
        *((uint64_t*)(rk_ + rkPtr_)) = data;
        rkPtr_ += 8;
      }
      break;
    }
    // SET_IV
    case 1: {
      // Read initialisation vector until buffer is full.
      if (ivPtr_ < sizeof(iv_)) {
        *((uint64_t*)(iv_ + ivPtr_)) = data;
        ivPtr_ += 8;
      }
      break;
    }
    // WRITE_DATA
    case 2: {
      // After IV and RK were set, start reading data.
      if (ivPtr_ == sizeof(iv_) && rkPtr_ == sizeof(rk_)) {
        Buffer *buf = &b[currentWr_];
        assert(buf->wr != 16);
        *((uint64_t *)(buf->data + buf->wr)) = data;
        buf->time = time;
        buf->wr += 8;
        if (buf->wr == 16) {
          currentWr_ = !currentWr_;
        }
      }
      break;
    }
  }
}


/*
 * Method originated from sram64_cbg.cpp.
 * Called when Vcc is changed and so on.
 */
void aes_dev::recompute_aes_pvt_parameters() 
{
  // Hardcoded values are arbitrary for testing purposes.
  pw_power l_leakage = pw_power(82.0, PW_nW);
  set_static_power(l_leakage);
 
  // Latencies which depend on ARM and Zynq clock rates.
  writeLatency_ = sc_time(150, SC_NS);
  readLatency_ = writeLatency_ * 0.8;
  cycleLatency_ = sc_time(10, SC_NS); 
  
  // Read/write/cycle energy counts.
  readEnergy_ = pw_energy(5.0, pw_energy_unit::PW_pJ);
  writeEnergy_ = 2.0 * readEnergy_; //rule of thumb
  cycleEnergy_ = pw_energy(2.21, pw_energy_unit::PW_nJ);
}

