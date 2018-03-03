// SystemC model of the AES Accelerator.

#ifndef AES_H
#define AES_H

#include "prazor.h"
#include "systemc.h"
#include "tlm.h"
#include "tlm_utils/multi_passthrough_target_socket.h"


#define AES_BASE_ADDR 0xF8006000
#define AES_SPACING   0x100



class aes_dev : public sc_module, public pw_module
{
public:
  tlm_utils::multi_passthrough_target_socket<aes_dev, 64, PW_TLM_TYPES> port0;  
  
  SC_CTOR(aes_dev);
  
  void b_access(int id, PRAZOR_GP_T &trans, sc_time &delay);
  
private:  
  void reset();
  bool rx_ready();
  void handle_noc_rx(const sc_time &time);
  
  bool running_;
  
  // Noc16 emulation.
  int  rxReady_;
  uint32_t rxLo_;
  uint32_t rxHi_;
  uint8_t rxCmd_;
  uint64_t txLo_;
  uint64_t txHi_;
  
  // Module state.
  uint8_t rk_[176];
  size_t rkPtr_;
  uint8_t iv_[16];
  size_t ivPtr_;

  // Front & back buffers.
  struct Buffer {
    uint8_t data[16];
    uint8_t wr;
    uint8_t rd;
    sc_time time;
  } b[2];

  // Current buffer being written or read.
  uint8_t currentWr_;
  uint8_t currentRd_;
 
  POWER3(PW_TLM3(sc_pwr::tlm_bit_transition_tracker read_bus_tracker));
};

#endif /* AES_H */
