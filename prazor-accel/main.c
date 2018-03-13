#include "aes.h"
#include "prstdio.h"



volatile uint32_t *PIO_SERIAL = (uint32_t*)(0xF8006000 + 8 *  0);
volatile uint32_t *PIO_CTRL   = (uint32_t*)(0xF8006000 + 8 *  2);
volatile uint32_t *PIO_TX_LO  = (uint32_t*)(0xF8006000 + 8 *  8);
volatile uint32_t *PIO_TX_HI  = (uint32_t*)(0xF8006000 + 8 *  9);
volatile uint32_t *PIO_TX_ST  = (uint32_t*)(0xF8006000 + 8 * 10);
volatile uint32_t *PIO_RX_LO  = (uint32_t*)(0xF8006000 + 8 * 12);
volatile uint32_t *PIO_RX_HI  = (uint32_t*)(0xF8006000 + 8 * 13);
volatile uint32_t *PIO_RX_ST  = (uint32_t*)(0xF8006000 + 8 * 14);


enum Command {
  SET_RK,
  SET_IV,
  WRITE_DATA,
};



static void noc_write(uint64_t data, uint8_t cmd)
{
  while ((*PIO_RX_ST & (1 << 8)) == 0);
  *PIO_RX_LO = (uint32_t)(data >> 0ull);
  *PIO_RX_HI = (uint32_t)(data >> 32ull);
  *PIO_RX_ST = cmd;
}

static int noc_read(uint64_t *data, uint8_t *cmd)
{
  int flag;
  while (((flag = *PIO_TX_ST) & (1 << 8)) == 0);
  
  uint64_t lo = *PIO_TX_LO;
  uint64_t hi = *PIO_TX_HI;
  if (cmd) {
    *cmd = flag & 0xFF;
  }
  if (data) {
    *data = (hi << 32ull) | (lo << 0ull);
  }
}

static int control(int cmd)
{
  *PIO_CTRL = (*PIO_CTRL & 0x30) | ((cmd & 3) << 4);
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
  
  noc_write(*((uint64_t *)(buf + 0)), WRITE_DATA);
  noc_write(*((uint64_t *)(buf + 8)), WRITE_DATA);
    
  for (size_t i = 16; i < length; i += 16) {
    noc_write(*((uint64_t *)(buf + i + 0)), WRITE_DATA);
    noc_write(*((uint64_t *)(buf + i + 8)), WRITE_DATA);

    noc_read((uint64_t*)(buf + i - 16), NULL);
    noc_read((uint64_t*)(buf + i -  8), NULL);
  }

  noc_read((uint64_t*)(buf + length - 16), NULL);
  noc_read((uint64_t*)(buf + length -  8), NULL);
}

uint8_t buffer[128 * 1024];

int main(int argc, char **argv)
{
  // Enable caches.
  asm("mov r0,#0x1000"); 
  asm("orr r0,r0,#4");
  asm("mcr  p15, 0, r0, c1, c0, 0"); 
  ((int *)0xF8F02100)[0] = 1; 
  
  // Check arguments: ./aes {iv} {key} {input} {output}
  if (argc < 5 || strlen(argv[1]) != 32 || strlen(argv[2]) != 32) {
    fprintf(stderr, "Usage: %s {key} {iv}\n", argc == 1 ? argv[0] : "aes");
    return 1;
  }

  // Parse the 128-bit encryption key and the IV.
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

  // Open the input & output files. 
  int fi = _syscall_fopen(argv[3], "r");
  int fo = _syscall_fopen(argv[4], "w");
  if (fi < 0 || fo < 0) {
    printf("Cannot open input/output files.");
    return -1;
  }
  
  // Set up the AES context.
  AESContext ctx;
  AES_init_ctx_iv(&ctx, key, iv);
  
  // Reset the accelerator.
  control(0);
  control(1);

  // Transfer the RK and IV.
  for (int i = 0; i < 176; i += 8) {
    noc_write(*(uint64_t*)(ctx.RoundKey + i), SET_RK);
  }
  for (int i = 0; i < 16; i += 8) {
    noc_write(*(uint64_t*)(ctx.Iv + i), SET_IV);
  }
   
  // Read & encode all bytes.
  int length;
  while (!_syscall_refill(fi, &length, buffer, sizeof(buffer))) {
    encode(&ctx, buffer, length);
    _syscall_flush(fo, buffer, length);
  } 
 
  _syscall_fclose(fi);
  _syscall_fclose(fo);
  return 0;
}

void _isr_routine()
{
}

