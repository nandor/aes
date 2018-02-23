// Prazor program talking to the accelerator module.

#include "prstdio.h"

volatile void *AES_PORT = (void*)0xF8006000;

int main(int argc, char **argv)
{
  *((char*)AES_PORT) = 0xFF;
  return 0;
}

void _isr_routine()
{

}

