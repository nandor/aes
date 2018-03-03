#pragma once

#include <cstdint>

void AES_encrypt_block(const uint8_t *rk, uint8_t *iv, uint8_t *buf);

