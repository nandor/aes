#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>

#include "aes.h"



/**
 * Perform the AES Encryption on the buffer which was passed as an argument.
 *
 * @param ctx AES Context (IV and Key)
 * @param buf Plaintext buffer
 * @param length Length of buffer
 *
 * @note The buffer which was originally plaintext gets filled with ciphertext. 
 */
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
  
  AES_CBC_encrypt_buffer(ctx, buf, length);
}


int main(int argc, char **argv)
{
  // argv[1] = key, argv[2] = IV
  if (argc < 3 || strlen(argv[1]) != 32 || strlen(argv[2]) != 32) {
    fprintf(stderr, "Usage: %s {key} {iv}\n", argc == 1 ? argv[0] : "aes");
    return EXIT_FAILURE;
  }

  // Library call to parse the 128-bit encryption key and IV.
  // Result is that the hex-input strings get loaded in binary 
  // format into two 16-byte arrays - one for the IV and one for the key..
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
  
  // Encrypt in the timed portion. before this, we wait a bit and idle
  // in order to get more stable power measurements.
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

