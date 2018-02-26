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

static int parse_hex(const char *src, uint8_t *key)
{
  for (unsigned i = 0; i < 32; ++i) {
    const char chr = src[i];
    int digit = 0;
    if ('0' <= chr && chr <= '9') {
      digit = chr - '0';
    } else if ('A' <= chr && chr <= 'F') {
      digit = chr - 'A' + 10;
    } else if ('a' <= chr && chr <= 'f') {
      digit = chr - 'a' + 10;
    } else {
      return 0;
    }

    if ((i & 1) == 0) {
      key[i >> 1] = (key[i >> 1] & 0x0F) | (digit << 4);
    } else {
      key[i >> 1] = (key[i >> 1] & 0xF0) | (digit << 0);
    }
  }

  return 1;
}

int main(int argc, char **argv)
{
  if (argc < 5 || strlen(argv[1]) != 32 || strlen(argv[2]) != 32) {
    fprintf(stderr, "Usage: %s {key} {iv}\n", argc == 1 ? argv[0] : "aes");
    return 1;
  }

  // Parse the 128-bit encryption key and the IV.
  uint8_t key[16];
  if (!parse_hex(argv[1], key)) {
    fprintf(stderr, "Invalid key: %s\n", argv[1]);
    return 1;
  }
  uint8_t iv[16];
  if (!parse_hex(argv[2], iv)) {
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
  uint8_t buffer[16];
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

