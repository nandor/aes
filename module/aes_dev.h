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
  POWER3(PW_TLM3(sc_pwr::tlm_bit_transition_tracker read_bus_tracker));
};

#endif /* AES_H */
