// Client which talks to the AES accelerator.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include "aes.h"

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



static char to_hex(uint8_t digit)
{
  return (digit < 10) ? (digit + '0') : (digit - 0xA + 'A');
}

static void noc_write(uint64_t data, uint8_t cmd)
{
  while ((MEM[PIO_RX_NOC16_STATUS] & (1 << 8)) == 0) {
    usleep(100);
  }

  MEM[PIO_RX_NOC16_DATA_LO] = data >> 0;
  MEM[PIO_RX_NOC16_DATA_HI] = data >> 32;
  MEM[PIO_RX_NOC16_STATUS] = cmd; 
}

static int noc_poll(uint64_t *data_out, uint8_t *cmd_out)
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

static void noc_read(uint64_t *data_out, uint8_t *cmd_out)
{
  while (!noc_poll(data_out, cmd_out)) {
    usleep(100);
  }
}

static int control(int cmd)
{
  uint32_t flag = MEM[PIO_CTRL];
  flag = (flag & 0x30) | (cmd & 0x3F);
  MEM[PIO_CTRL] = flag;  
}

static void read_output()
{
  uint8_t buf[16];
    
  uint64_t data;
  uint8_t cmd;
  noc_read(&data, &cmd);
  *((uint64_t *)(buf + 0)) = data;
  noc_read(&data, &cmd);
  *((uint64_t *)(buf + 8)) = data;

  for (size_t i = 0; i < 16; ++i) {
    putchar(to_hex((buf[i] >> 4) & 0xF));
    putchar(to_hex((buf[i] >> 0) & 0xF));
  }
  putchar('\n');
}

static void encode(AESContext *ctx, uint8_t *buf, size_t length)
{
  if (length % 16 != 0) {
    char pad = 16 - length % 16;
    for (unsigned i = 0; i < pad; ++i) {
      buf[length++] = pad;
    }
  }

  if (length == 0) {
    return;
  } 
  
  noc_write(*((uint64_t *)(buf + 0)), 3);
  noc_write(*((uint64_t *)(buf + 8)), 3);
    
  for (size_t i = 16; i < length; i += 16) {
    noc_write(*((uint64_t *)(buf + i + 0)), 3);
    noc_write(*((uint64_t *)(buf + i + 8)), 3);
    read_output();
  }

  read_output();
}


int main(int argc, char **argv)
{
  if (argc < 3 || strlen(argv[1]) != 32 || strlen(argv[2]) != 32) {
    fprintf(stderr, "Usage: %s {key} {iv}\n", argc == 1 ? argv[0] : "aes");
    return 1;
  }

  //  Parse the 128-bit encryption key and the IV.
  uint8_t key[16];
  if (!AES_parse_key(argv[1], key)) {
    fprintf(stderr, "Invalid key: %s\n", argv[1]);
    return 1;
  }
  uint8_t iv[16];
  if (!AES_parse_key(argv[2], iv)) {
    fprintf(stderr, "Invalid IV: %s\n", argv[1]);
    return 1;
  }

  // Map the controller to memory.
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

  // Set up the AES context.
  AESContext ctx;
  AES_init_ctx_iv(&ctx, key, iv);

  // Reset the accelerator and the NoC FIFO.
  control(0x02);
  usleep(1000);
  control(0x10);
	
  // Communicate.
  printf("Serial number: %x\n", MEM[PIO_SERIAL]);

  // Transfer the RK and IV.
  for (int i = 0; i < 176; i += 8) {
    noc_write(*(uint64_t*)(ctx.RoundKey + i), 0);
  }
  for (int i = 0; i < 16; i += 8) {
    noc_write(*(uint64_t*)(ctx.Iv + i), 1);
  }

  // Read from stdin or a pipe and keep encoding chunks of data.
  uint8_t buffer[1024];
  size_t idx = 0;
  for (;;) {
    size_t count = sizeof(buffer) - idx;
    ssize_t len = read(0, buffer + idx, count);
    if (len < 0) {
      perror("read failed");
      return EXIT_FAILURE;
    }

    if (len < count) {
      if (isatty(0)) {
        if (buffer[idx + len - 1] == '\n') {
          len -= 1;
        } else {
          encode(&ctx, buffer, idx + len);
          return EXIT_FAILURE;
        }
      } else {
        encode(&ctx, buffer, idx + len);
        return EXIT_SUCCESS;
      }
    }

    idx += len;
    if (idx == sizeof(buffer)) {
      encode(&ctx, buffer, sizeof(buffer));
      idx = 0;
    }
  }

  return EXIT_SUCCESS;
}

