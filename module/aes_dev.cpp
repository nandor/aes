
#include "aes_dev.h"



aes_dev::aes_dev(sc_module_name moduleName)
  : sc_module(moduleName)
  , pw_module()
  , read_bus_tracker(this)
{
  port0.register_b_transport(this, &aes_dev::b_access);
}

void aes_dev::b_access(int id, PRAZOR_GP_T &trans, sc_time &delay_)
{
  trans.set_response_status(tlm::TLM_OK_RESPONSE);
}

