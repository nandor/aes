/* AES device which talks to the rest of Prazor using TLM 2.0 Transactions.
File is based on src/io/uart64_cbg.cpp, with area and power taken from src/memories/sram64_cbg.cpp */

#include "aes_dev.h"
#include "aes_lib.h"

constexpr int kScale = 10;

const sc_time kCycle(kScale, SC_NS);
const sc_time kWriteTime(170, SC_NS);
const sc_time kReadTime = kWriteTime * 0.8;

// Constructor
aes_dev::aes_dev(sc_module_name moduleName)
  : sc_module(moduleName)
  , pw_module()
  , read_bus_tracker(this)
{
  //latency = sc_time(200, SC_NS); // Assume connected to a slow I/O external bus.
  // Bind to the target socket. The method pointed to will be invoked when this port's 8-byte address is read or written to.
  port0.register_b_transport(this, &aes_dev::b_access); 
  reset(); //custom method which clears all the variables

  // Simulate the area. Based on: just copied from sram64_cbg.cpp
  //set_fixed_area(pw_area(13359.0 + 4.93/8 * m_bits, PW_squm));

}


void aes_dev::b_access(int id, PRAZOR_GP_T &trans, sc_time &delay_)
{
  // Get the transaction time.
  const sc_time transTime = trans.ltd.point();  

  // This device only supports reads and writes.
  bool isRead; 
  switch (trans.get_command()) {
    case tlm::TLM_READ_COMMAND: {
      //the transaction received is a read
      trans.ltd += kReadTime;
      isRead = true;
      break;
    }
    case tlm::TLM_WRITE_COMMAND: {
      //the transaction received is a write
      trans.ltd += kWriteTime;
      isRead = false;
      break;
    }
    default: {
      //error
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
          const unsigned delta = (transTime - buf->time) / kCycle;
          if (delta < 20) {
            *ptr = 0;
          } else {
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
}


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
  // Bail out if device not running.
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
  
  // Handle individual commants.
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

