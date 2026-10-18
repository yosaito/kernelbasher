#pragma once
#include "core.hpp"
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <stdexcept>
#include <cstdarg>

extern "C" {
extern unsigned char kb_memory[0x160c5cc];
extern unsigned char kb_rdata[0x3000];
int kb_m8_pack(const char* kernel, const void* boot_block, const char* original_bios, const char* output);
int kb_m8_unpack(const char* input, const char* output);
int kb_lzx_compress(const void* input, void* output, unsigned size);
int kb_lzx_decompress(const void* input, void* output, unsigned size);
}
inline unsigned char* data_address(unsigned address) {
    if(address>=0x415000 && address<0x1a215cc) return kb_memory+address-0x415000;
    if(address>=0x412000 && address<0x415000) return kb_rdata+address-0x412000;
    throw std::runtime_error("Recovered data reference outside image");
}
inline int32_t& word(unsigned address) { return *reinterpret_cast<int32_t*>(data_address(address)); }
inline float read_float(unsigned address) { float f; std::memcpy(&f,data_address(address),4); return f; }
inline uint32_t float_bits(float f) { uint32_t v; std::memcpy(&v,&f,4); return v; }
inline void diagnostic_printf(const char*,...) {}
void reset_original_data();
void locate_patch_sites(const std::vector<uint8_t>&,int);
std::vector<uint8_t> patch_buffer(const std::vector<uint8_t>&,int,const Options&);
std::vector<uint8_t> unpack_m8(const std::vector<uint8_t>&);
std::vector<uint8_t> pack_m8(const std::vector<uint8_t>& original,const std::vector<uint8_t>& kernel);
void check_xbflash_dependency();
