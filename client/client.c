#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>

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



static void noc_write(uint64_t data, uint8_t cmd)
{
  while ((MEM[PIO_RX_NOC16_STATUS] & (1 << 8)) == 0);

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
    if (data_out) {
      *data_out = (((uint64_t)hi) << 32ull) | (((uint64_t)lo) << 0ull);
    }
    if (cmd_out) {
      *cmd_out = cmd;
    }
    return 1; 
  } else {
    if (data_out) {
      *data_out = 0;
    }
    if (cmd_out) {
      *cmd_out = 0;
    }
    return 0;
  }
}

static void noc_read(uint64_t *data_out, uint8_t *cmd_out)
{
  while (!noc_poll(data_out, cmd_out)) {
    usleep(100);
  }
}

static void encode(AESContext *ctx, uint8_t *buf, size_t length)
{
  //If the length is not 16, pad it
  if (length % 16 != 0) {
    char pad = 16 - length % 16;
    for (unsigned i = 0; i < pad; ++i) {
      buf[length++] = pad;
    }
  }

  if (length == 0) {
    return;
  } 
 
  noc_write(*((uint64_t *)(buf + 0)), 2);
  noc_write(*((uint64_t *)(buf + 8)), 2);
  for (size_t i = 16; i < length; i += 16) {
    noc_write(*((uint64_t *)(buf + i + 0)), 2);
    noc_write(*((uint64_t *)(buf + i + 8)), 2);

    noc_read((uint64_t*)(buf + i - 16), NULL);
    noc_read((uint64_t*)(buf + i -  8), NULL);
  }

  noc_read((uint64_t*)(buf + length - 16), NULL);
  noc_read((uint64_t*)(buf + length -  8), NULL);
}

static int control(int cmd)
{
  uint32_t flag = MEM[PIO_CTRL];
  flag = (flag & 0x30) | (cmd & 0x3F);
  MEM[PIO_CTRL] = flag;  
}


int main(int argc, char **argv)
{
  if (argc < 4 || strlen(argv[1]) != 32 || strlen(argv[2]) != 32) {
    fprintf(stderr, "Usage: %s {key} {iv} {in}\n", argc == 1 ? argv[0] : "aes");
    return EXIT_FAILURE;
  }

  // Parse the 128-bit encryption key and the IV.
  uint8_t key[16];
  if (!AES_parse_key(argv[1], key)) {
    fprintf(stderr, "Invalid key: %s\n", argv[1]);
    return EXIT_FAILURE;
  }
  uint8_t iv[16];
  if (!AES_parse_key(argv[2], iv)) {
    fprintf(stderr, "Invalid IV: %s\n", argv[1]);
    return EXIT_FAILURE;
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
  
  // Transfer the RK and IV.
  for (int i = 0; i < 176; i += 8) {
    noc_write(*(uint64_t*)(ctx.RoundKey + i), 0);
  }
  for (int i = 0; i < 16; i += 8) {
    noc_write(*(uint64_t*)(ctx.Iv + i), 1);
  }

  // Load the input data.
  uint8_t *data;
  off_t length;
  size_t padded;
  {
    int fd = open(argv[3], O_RDONLY);
    if (fd < 0) {
      perror("Cannot open input file");
      return EXIT_FAILURE;
    }

    struct stat st;
    if (fstat(fd, &st)) {
      perror("Cannot stat input file");
      return EXIT_FAILURE;
    }
    
    length = st.st_size;
    padded = (length + 0xF) & ~0xF;
    data = (uint8_t*) malloc(padded);
    if (read(fd, data, length) != length) {
      perror("Cannot read input file.");
    }
  
    close(fd);
  }
  
  time_t t;
  struct tm *tm;
  

  sleep(3);
  t = time(NULL);
  tm = localtime(&t);
  printf("%02d:%02d:%02d ", tm->tm_hour, tm->tm_min, tm->tm_sec);
  
  // Same as in the unix version. 
  double dt;
  {
    const clock_t start = clock();
    encode(&ctx, data, length);
    const clock_t end = clock();
  
    dt = (double)(end - start) / CLOCKS_PER_SEC;
  }

  
  t = time(NULL);
  tm = localtime(&t);
  printf("%02d:%02d:%02d %f\n", tm->tm_hour, tm->tm_min, tm->tm_sec, dt);
  sleep(3);

  // Write the output, if there's a file name specified.
  if (argc >= 5) {
    int fd = open(argv[4], O_WRONLY | O_CREAT, 0666);
    if (fd < 0) {
      perror("Cannot open output file.");
      return EXIT_FAILURE;
    }

    if (write(fd, data, padded) != padded) {
      perror("Cannot write output.");
      return EXIT_FAILURE;
    }
    
    close(fd);
  }

  return EXIT_SUCCESS;
}

