// Copyright (C) 2015 XPARCH, Ltd. <info@xparch.com>
//
// Prazor/vhls hello world test.
//
#include "prstdio.h"

#include "socdam_bdoor_mapping.h"

void hello_writes(char *s)
{
  while (*s) craft_wrch(*s++);
}

int main(int argc, char **argv)
{
  putchar('1');
  putchar('2');
  putchar('3');

  hello_writes("Hello World\n");
  int test;

  for (test=0; test<2; test++) // Run test with and without interrupt-driven UART.
    {
      // Now we have a GIC on the ARM build the interrupt code will not work without a few pokes to the GIC to route the interrupt through.  I'll add them here.
      //      if (test==1) uart_reset_and_enable(); // Switch to interrupt mode
      putchar('4');
      putchar('5');
      putchar('6');

      int v = SOCDAM_READ_PID_REG(0); // On ARM cpu id can be read from low bits of cp15 register register 5 (MPIDR register)
      putchar('\n');
      if (v > 2) while(1) continue;
      
      printf("argc = %d argv[0]=%p sp=%p\n", argc, argv[0], &v);
      printf("Hello X World %c\n", 64);
      printf("Hello Universe %x %s %s %i\n", 100, "200.1", "300.2", 400);
      printf("Starting on core ->%i<-\n", v);
      int i;
      for (i=0;i<argc;i++) printf("Argv entry: %i '%s'\n", i, argv[i]);
      //      for (i=0;i<argc;i++) printf("Core %d: %i %X '%s'\n", v, i, argv[i], argv[i]);


    }
  printf("Finished hello test\n");
  SOCDAM_KILL_SIM(0); // Cause PRAZOR simulator to exit - may need to wait for interrupt output to drain before exiting.
  return 0;
}


void _isr_routine()
{
  uart_isr_routine();
}
//eof
