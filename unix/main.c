#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "aes.h"

static char to_hex(uint8_t digit)
{
  return (digit < 10) ? (digit + '0') : (digit - 0xA + 'A');
}

static void encode(AESContext *ctx, uint8_t *buf, size_t length)
/* Perform the AES Encryption on the buffer which was passed as an argument.
   Input: AES Context (IV and Key), buffer of plaintext, and length of plaintext.
   Output: None, but the buffer which was originally plaintext gets filled with ciphertext. */
{
  if (length % 16 != 0) {
    char pad = 16 - length % 16;
    for (unsigned i = 0; i < pad; ++i) {
      buf[length++] = pad;
    }
  }

  AES_CBC_encrypt_buffer(ctx, buf, length);

  if (write(1, buf, length) != length) {
    perror("write failed");
  }
}

int main(int argc, char **argv)
{
  //argv[1] = key, argv[2] = IV
  if (argc < 3 || strlen(argv[1]) != 32 || strlen(argv[2]) != 32) {
    fprintf(stderr, "Usage: %s {key} {iv}\n", argc == 1 ? argv[0] : "aes");
    return EXIT_FAILURE;
  }

  // Library call to parse the 128-bit encryption key and IV.
  // Result is that the hex-input strings get loaded in binary format into two 16-byte arrays - one for the IV and one for the key..
  uint8_t key[16];
  if (!AES_parse_key(argv[1], key)) {
    fprintf(stderr, "Invalid key: %s\n", argv[1]);
    return EXIT_FAILURE;
  }
  uint8_t iv[16];
  if (!AES_parse_key(argv[2], iv)) {
    fprintf(stderr, "Invalid IV: %s\n", argv[2]);
    return EXIT_FAILURE;
  }

  // Set up the AES context using the AES library.
  AESContext ctx;
  AES_init_ctx_iv(&ctx, key, iv);

  // Perform the encryption.
  // Read the plaintext from stdin (via a pipe) and encode the chunks of data which are received.
  // Encode is a call to the AES library.
  uint8_t buffer[1024];
  size_t idx = 0;
  for (;;) { //poll stdin
    size_t count = sizeof(buffer) - idx;
    ssize_t len = read(0, buffer + idx, count); //read data from stdin
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

