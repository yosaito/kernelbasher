// Bounded C++ equivalent of the M8 container routines at 00409ff0 / 0040e0b0.
// The codec itself remains the recovered, reassembled x86 implementation.
#include "core_internal.hpp"
#include <algorithm>

namespace {
uint32_t u32(const std::vector<uint8_t>& b,size_t p) {
    if(p>b.size()||b.size()-p<4)throw std::runtime_error("Truncated M8 structure");
    uint32_t v;std::memcpy(&v,b.data()+p,4);return v;
}
uint16_t u16(const std::vector<uint8_t>& b,size_t p) {
    if(p>b.size()||b.size()-p<2)throw std::runtime_error("Truncated LZX frame");
    return uint16_t(b[p])|(uint16_t(b[p+1])<<8);
}
void put(std::vector<uint8_t>& b,size_t p,uint32_t v){
    if(p>b.size()||b.size()-p<4)throw std::runtime_error("Truncated M8 header");
    std::memcpy(b.data()+p,&v,4);
}
void range(size_t start,size_t length,size_t size){
    if(start>size||length>size-start)throw std::runtime_error("M8 region exceeds file bounds");
}
size_t footer(const std::vector<uint8_t>& b){
    if(b.size()!=0x40000&&b.size()!=0x80000&&b.size()!=0x100000)throw std::runtime_error("Invalid M8 ROM size");
    // The original searched beyond EOF on its first iteration. Start at the
    // highest even offset with room for all 26 footer bytes instead.
    for(size_t p=(b.size()-26)&~size_t(1);p>b.size()-4096;p-=2)
        if(std::memcmp(b.data()+p,"$EvoxRom$",10)==0)return p;
    throw std::runtime_error("Missing M8 footer");
}
void frames(const std::vector<uint8_t>& b,size_t start,size_t compressed,size_t expected){
    range(start,compressed,b.size());size_t p=start,end=start+compressed,total=0;
    if(!compressed||!expected||expected>2*1024*1024)throw std::runtime_error("Invalid M8 kernel length");
    while(p<end){
        range(p,4,end);size_t packed=u16(b,p),plain=u16(b,p+2);
        if(!packed||!plain||plain>0x8000)throw std::runtime_error("Invalid M8 LZX frame");
        range(p+4,packed,end);p+=4+packed;total+=plain;
        if(total>expected)throw std::runtime_error("M8 LZX output exceeds declared length");
    }
    if(total!=expected)throw std::runtime_error("M8 LZX lengths disagree");
}
size_t data_section(const std::vector<uint8_t>& k){
    if(k.size()<0x40||k[0]!='M'||k[1]!='Z')throw std::runtime_error("Kernel is not a PE image");
    size_t pe=u32(k,0x3c);range(pe,24,k.size());
    if(u32(k,pe)!=0x4550)throw std::runtime_error("Missing kernel PE signature");
    size_t count=u16(k,pe+6),start=pe+24+u16(k,pe+20);range(start,count*40,k.size());
    for(size_t i=0;i<count;++i){size_t p=start+i*40;if(std::memcmp(k.data()+p,".data\0\0\0",8)==0)return p;}
    throw std::runtime_error("Kernel has no .data section");
}
}

std::vector<uint8_t> unpack_m8(const std::vector<uint8_t>& bios){
    size_t f=footer(bios);size_t start=(u32(bios,f+14)-0x800000u+uint32_t(bios.size()))&0xffffffu;
    size_t compressed=u32(bios,f+18),plain=u32(bios,f+22);frames(bios,start,compressed,plain);
    // A full frame of padding accommodates the original codec's frame buffer.
    std::vector<uint8_t> kernel(plain+0x8000);reset_original_data();
    if(!(kb_lzx_decompress(bios.data()+start,kernel.data(),unsigned(compressed))&255))throw std::runtime_error("M8 LZX decompression failed");
    kernel.resize(plain);
    size_t length=u32(kernel,0x2c);uint32_t address=u32(kernel,0x34);
    if(address<0x80010000u)throw std::runtime_error("Invalid M8 .data RAM address");
    size_t destination=address-0x80010000u;range(destination,length,kernel.size());range(start+compressed,length,bios.size());
    std::copy_n(bios.data()+start+compressed,length,kernel.data()+destination);
    data_section(kernel);return kernel;
}

std::vector<uint8_t> pack_m8(const std::vector<uint8_t>& original,const std::vector<uint8_t>& input){
    size_t f=footer(original);if(input.size()>2*1024*1024)throw std::runtime_error("M8 kernel exceeds codec bound");
    auto kernel=input;size_t s=data_section(kernel),virtual_size=u32(kernel,s+8),raw=u32(kernel,s+20);
    if(virtual_size%4)throw std::runtime_error("M8 .data virtual size is not word aligned");
    range(raw,virtual_size,kernel.size());size_t initialized=0;
    for(size_t i=0;i<virtual_size;i+=4)if(u32(kernel,raw+i))initialized=i+4;
    size_t tail=u32(original,f+10);if(tail>original.size()||original.size()-tail<0x4658)throw std::runtime_error("Invalid M8 boot-block position");
    size_t boot=original.size()-tail-0x4658;if(initialized>boot)throw std::runtime_error("M8 data does not fit ROM");
    size_t data=boot-initialized;
    std::vector<uint8_t> initialized_data(kernel.begin()+raw,kernel.begin()+raw+initialized);
    put(kernel,0x28,uint32_t(virtual_size-initialized));put(kernel,0x2c,uint32_t(initialized));
    put(kernel,0x30,uint32_t(data-original.size()));put(kernel,0x34,u32(kernel,s+12)+0x80010000u);put(kernel,0x38,0x4658);
    std::fill_n(kernel.data()+raw,initialized,0);
    reset_original_data();word(0x421518)=reinterpret_cast<int>(data_address(0x421580));
    if(!(kb_lzx_compress(kernel.data(),data_address(0x421580),unsigned(kernel.size()))&255))throw std::runtime_error("M8 LZX compression failed");
    size_t compressed=uint32_t(word(0x12215a4));if(!compressed||compressed>data)throw std::runtime_error("Compressed M8 kernel does not fit ROM");
    size_t start=data-compressed;
    auto result=original;
    std::copy_n(data_address(0x415040),0x4658,result.data()+boot);
    std::copy(initialized_data.begin(),initialized_data.end(),result.begin()+data);
    std::copy_n(data_address(0x421580),compressed,result.data()+start);
    put(result,f+14,0xff800000u-uint32_t(result.size()-start));put(result,f+18,uint32_t(compressed));put(result,f+22,uint32_t(kernel.size()));
    return result;
}
