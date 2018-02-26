// System-on-Chip Design and Modelling Exercise 3.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "aes.h"



static char to_hex(uint8_t digit)
{
  return (digit < 10) ? (digit + '0') : (digit + 'A');
}

static void encode(AESContext *ctx, uint8_t *buf, size_t length)
{
  if (length % 16 != 0) {
    char pad = 16 - length % 16;
    for (unsigned i = 0; i < pad; ++i) {
      buf[length++] = pad;
    }
  }

  AES_CBC_encrypt_buffer(ctx, buf, length);

  char output[length * 2];
  for (size_t i = 0; i < length; ++i) {
    output[2 * i + 0] = to_hex((buf[i] >> 4) & 0xF);
    output[2 * i + 1] = to_hex((buf[i] >> 0) & 0xF);
  }

  if (write(1, output, sizeof(output)) != sizeof(output)) {
    perror("write failed");
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
  if (argc < 3 || strlen(argv[1]) != 32 || strlen(argv[2]) != 32) {
    fprintf(stderr, "Usage: %s {key} {iv}\n", argc == 1 ? argv[0] : "aes");
    return EXIT_FAILURE;
  }

  // Parse the 128-bit encryption key and the IV.
  uint8_t key[16];
  if (!parse_hex(argv[1], key)) {
    fprintf(stderr, "Invalid key: %s\n", argv[1]);
    return EXIT_FAILURE;
  }
  uint8_t iv[16];
  if (!parse_hex(argv[1], iv)) {
    fprintf(stderr, "Invalid IV: %s\n", argv[1]);
    return EXIT_FAILURE;
  }

  // Set up the AES context.
  AESContext ctx;
  AES_init_ctx_iv(&ctx, key, iv);

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
}

