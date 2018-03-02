#include "aes.h"
#include "prstdio.h"



static char to_hex(uint8_t digit)
{
  return (digit < 10) ? (digit + '0') : (digit + 'A');
}

static void encode(AESContext *ctx, uint8_t *buf, size_t length, uint8_t *output)
{
  if (length % 16 != 0) {
    char pad = 16 - length % 16;
    for (unsigned i = 0; i < pad; ++i) {
      buf[length++] = pad;
    }
  }

  AES_CBC_encrypt_buffer(ctx, buf, length);

  for (size_t i = 0; i < length; ++i) {
    output[2 * i + 0] = to_hex((buf[i] >> 4) & 0xF);
    output[2 * i + 1] = to_hex((buf[i] >> 0) & 0xF);
  }
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
  
  // Read & encode all bytes.
  uint8_t buffer[512];
  uint8_t output[sizeof(buffer) * 2];
  int ptr;
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
