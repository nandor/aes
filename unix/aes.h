#pragma once

typedef unsigned char uint8_t;
typedef unsigned int  uint32_t;

#define AES_BLOCKLEN 16
#define AES_KEYLEN 16
#define AES_KEYEXPSIZE 176

typedef struct
{
  uint8_t RoundKey[AES_KEYEXPSIZE];
  uint8_t Iv[AES_BLOCKLEN];
} AESContext;

void AES_init_ctx_iv(AESContext* ctx, const uint8_t* key, const uint8_t* iv);
void AES_CBC_encrypt_buffer(AESContext* ctx, uint8_t* buf, uint32_t length);
int  AES_parse_key(const char *src, uint8_t *key);

