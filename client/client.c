// Client which talks to the AES accelerator.

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>

#define PIO_BASE 0x43c00000

#define PIO_SERIAL           0
#define PIO_CTRL             2

#define PIO_TX_NOC16_DATA_LO 8
#define PIO_TX_NOC16_DATA_HI 9
#define PIO_TX_NOC16_STATUS  10

#define PIO_RX_NOC16_DATA_LO 12
#define PIO_RX_NOC16_DATA_HI 13
#define PIO_RX_NOC16_STATUS  14


volatile uint32_t *MEM;


void noc_write(uint64_t data, uint8_t cmd)
{
  while ((MEM[PIO_RX_NOC16_STATUS] & (1 << 8)) == 0) {
    usleep(100);
  }

  MEM[PIO_RX_NOC16_DATA_LO] = data >> 0;
  MEM[PIO_RX_NOC16_DATA_HI] = data >> 32;
  MEM[PIO_RX_NOC16_STATUS] = cmd; 
}

int noc_poll(uint64_t *data_out, uint8_t *cmd_out)
{
  uint32_t cmd = MEM[PIO_TX_NOC16_STATUS];
  if (cmd & (1 << 8)) {
    uint32_t lo = MEM[PIO_TX_NOC16_DATA_LO];
    uint32_t hi = MEM[PIO_TX_NOC16_DATA_HI];
    *data_out = (((uint64_t)hi) << 32ull) | (((uint64_t)lo) << 0ull);
    *cmd_out = cmd;
    return 1; 
  } else {
    *data_out = 0;
    *cmd_out = 0;
    return 0;
  }
}

int control(int cmd)
{
  uint32_t flag = MEM[PIO_CTRL];
  flag = (flag & 0x30) | ((cmd & 3) << 4);
  MEM[PIO_CTRL] = flag;  
}

int main()
{
  int fd = open("/dev/mem", O_RDWR | O_SYNC);
  if (fd < 0) {
    perror("Cannot open /dev/mem");
    return EXIT_FAILURE;  
  } 

  MEM = mmap(0, 4096, PROT_READ | PROT_WRITE, MAP_SHARED, fd, PIO_BASE);
  if (MEM == MAP_FAILED) {
    perror("Cannot map /dev/mem");
    return EXIT_FAILURE;
  }

  // Reset the accelerator.
  control(0);
  usleep(1000);
  control(1);
	
  // Communicate.
  printf("Serial number: %x\n", MEM[PIO_SERIAL]);
  for (int i = 1; i <= 100; ++i) {
    uint64_t data;
    uint8_t cmd;
    
    noc_write(i, 0);
    while (!noc_poll(&data, &cmd)) {
      usleep(100);  
    }
    printf("%llx %d\n", data, cmd);
  }

  return EXIT_SUCCESS;
}

