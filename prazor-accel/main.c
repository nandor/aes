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
  while (((flag= *PIO_TX_ST) & (1 << 8)) == 0);
  
  uint64_t lo = *PIO_TX_LO;
  uint64_t hi = *PIO_TX_HI;
  *cmd = flag & 0xFF;
  *data = (hi << 32ull) | (lo << 0ull);
}

static int control(int cmd)
{
  *PIO_CTRL = (*PIO_CTRL & 0x30) | ((cmd & 3) << 4);
}

static char to_hex(uint8_t digit)
{
  return (digit < 10) ? (digit + '0') : (digit + 'A');
}

static void read_output(uint8_t *output)
{
  uint8_t buf[16];
    
  uint64_t data;
  uint8_t cmd;
  noc_read(&data, &cmd);
  *((uint64_t *)(buf + 0)) = data;
  noc_read(&data, &cmd);
  *((uint64_t *)(buf + 8)) = data;

  for (size_t i = 0; i < 16; ++i) {
    output[2 * i + 0] = to_hex((buf[i] >> 4) & 0xF);
    output[2 * i + 1] = to_hex((buf[i] >> 0) & 0xF);
  }
}

static void encode(AESContext *ctx, uint8_t *buf, size_t length, uint8_t *output)
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
    read_output(output + (i - 16) * 2);
  }

  read_output(output + (length * 2) - 32);
}


int main(int argc, char **argv)
{
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
  int ptr;
  uint8_t buffer[128];
  uint8_t output[sizeof(buffer) * 2];
  while (!_syscall_refill(fi, &ptr, buffer, sizeof(buffer))) {
    encode(&ctx, buffer, ptr, output);
    _syscall_flush(fo, output, ptr * 2);
  } 
 
  _syscall_fclose(fi);
  _syscall_fclose(fo);
  return 0;
}

void _isr_routine()
{
}

