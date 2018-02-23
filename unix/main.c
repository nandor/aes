// System-on-Chip Design and Modelling Exercise 3.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>



void encode(char key[16], char *buf, size_t length)
{ 
  if (length % 16 != 0) {
    char pad = 16 - length % 16;
    for (unsigned i = 0; i < pad; ++i) {
      buf[length++] = pad;
    }  
  }

  if (write(1, buf, length) != length) {
    perror("write failed");
  }
}

int main(int argc, char **argv)
{
  char key[16];
  if (argc < 2 || strlen(argv[1]) != 32) {
    fprintf(stderr, "Usage: %s {key}\n", argc == 1 ? argv[0] : "aes");
    return EXIT_FAILURE;   
  }
  
  // Parse the 128-bit encryption key.
  for (unsigned i = 0; i < 32; ++i) {
    const char chr = argv[1][i];  
    int digit = 0;
    if ('0' <= chr && chr <= '9') {
      digit = chr - '0';
    } else if ('A' <= chr && chr <= 'F') {
      digit = chr - 'A' + 10;
    } else if ('a' <= chr && chr <= 'f') {
      digit = chr - 'a' + 10;
    } else {
      fprintf(stderr, "Not a hex digit: %c\n", chr);
    }
    
    if ((i & 1) == 0) {
      key[i >> 1] = (key[i >> 1] & 0x0F) | (digit << 4);
    } else {
      key[i >> 1] = (key[i >> 1] & 0xF0) | (digit << 0);
    }
  } 

  // Read from stdin or a pipe and keep encoding chunks of data.
  char buffer[1024];
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
          encode(key, buffer, idx + len);
          return EXIT_FAILURE;
        }
      } else {
        encode(key, buffer, idx + len);
        return EXIT_SUCCESS;
      }
    }

    idx += len;
    if (idx == sizeof(buffer)) {
      encode(key, buffer, idx + len);
      idx = 0;
    }  
  }
}

