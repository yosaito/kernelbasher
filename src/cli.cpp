#include "core_internal.hpp"
#include <iostream>
#include <fstream>
#include <memory>

int main(int argc,char** argv) {
 try {
    if(argc<3){std::cout<<"KernelBasher reconstructed 1.1\nCommands: identify BIOS | unpack BIOS OUTPUT | patch BIOS OUTPUT [PRESET] [LOGO]\n          kernel-patch INPUT OUTPUT KIND [PRESET] [LOGO] | preset-info FILE | logo-info FILE\n";return 0;}
    std::string cmd=argv[1];
    if(cmd=="identify"){auto id=identify_bios(read_file(argv[2]));std::cout<<id.name<<" kind="<<id.kind<<" checksum="<<std::hex<<id.checksum<<"\n";return id.kind?0:2;}
    if(cmd=="preset-info"){auto p=load_preset(argv[2]);auto o=apply_preset(p,Options::defaults());for(auto& c:channels)std::cout<<c.name<<"="<<o.at(c.member)<<"\n";std::cout<<"Radius="<<o.radius<<"\n";return 0;}
    if(cmd=="logo-info"){auto l=load_logo(argv[2]);std::cout<<l.vertices.size()<<" vertices, "<<l.faces.size()<<" triangles\n";return 0;}
    if(cmd=="preset-copy"&&argc==4){auto p=load_preset(argv[2]);write_new_file(argv[3],{p.bytes.begin(),p.bytes.end()});return 0;}
    if(cmd=="test-preset-roundtrip"&&argc==4){auto p=load_preset(argv[2]);auto q=make_preset(apply_preset(p,Options::defaults()),p);write_new_file(argv[3],{q.bytes.begin(),q.bytes.end()});return 0;}
    if(cmd=="unpack"&&argc==4){unpack_bios(argv[2],argv[3]);return 0;}
    if(cmd=="patch"&&argc>=4){auto o=Options::defaults();if(argc>=5)o=apply_preset(load_preset(argv[4]),o);std::unique_ptr<Logo> l;if(argc>=6){l=std::make_unique<Logo>(load_logo(argv[5]));o.at(0xd48)=1;}patch_bios(argv[2],argv[3],o,l.get());return 0;}
    if(cmd=="kernel-patch"&&argc>=5){auto o=Options::defaults();if(argc>=6)o=apply_preset(load_preset(argv[5]),o);std::unique_ptr<Logo> l;if(argc>=7){l=std::make_unique<Logo>(load_logo(argv[6]));o.at(0xd48)=1;}auto b=patch_kernel(read_file(argv[2]),std::stoi(argv[4]),o,l.get());write_new_file(argv[3],b);return 0;}
    // Private regression command: input settings are the original DDX member buffer.
    if(cmd=="test-scanner"&&argc==4){auto bytes=read_file(argv[2]);int kind=std::stoi(argv[3]);if(kind<1||kind>4)throw std::runtime_error("Invalid kind");reset_original_data();locate_patch_sites(bytes,kind);std::cout<<"[";for(unsigned i=0;i<20;++i){if(i)std::cout<<",";std::cout<<word(0x41fef8+i*4);}std::cout<<"]\n";return 0;}
    if(cmd=="test-dependencies"){check_xbflash_dependency();std::cout<<"Original xbflash.dll exports and config.ini loaded successfully\n";return 0;}
    if(cmd=="test-m8-pack"&&argc==5){write_new_file(argv[4],pack_m8(read_file(argv[2]),read_file(argv[3])));return 0;}
    if(cmd=="test-m8-unpack"&&argc==4){write_new_file(argv[3],unpack_m8(read_file(argv[2])));return 0;}
    if(cmd=="test-original-m8-pack"&&argc==5){if(std::filesystem::exists(argv[4]))throw std::runtime_error("Output exists");reset_original_data();if(kb_m8_pack(argv[3],data_address(0x415040),argv[2],argv[4]))throw std::runtime_error("Original M8 pack failed");return 0;}
    if(cmd=="test-kernel"&&(argc==7||argc==8)){auto raw=read_file(argv[5]);if(raw.size()!=0xe00)throw std::runtime_error("Expected DDX buffer");Options o;std::memcpy(o.fields.data(),raw.data(),raw.size());std::memcpy(&o.radius,raw.data()+0xdcc,4);o.camera=std::stoi(argv[6]);std::unique_ptr<Logo> logo;if(argc==8)logo=std::make_unique<Logo>(load_logo(argv[7]));auto input=read_file(argv[2]);const auto preserved=input;auto b=patch_kernel(input,std::stoi(argv[4]),o,logo.get(),false);if(input!=preserved)throw std::runtime_error("Patcher mutated input");auto again=patch_kernel(input,std::stoi(argv[4]),o,logo.get(),false);if(again!=b||input!=preserved)throw std::runtime_error("Repeated patch changed output/input");write_new_file(argv[3],b);return 0;}
    if(cmd=="test-codec"&&argc==4){auto b=read_file(argv[2]);reset_original_data();word(0x421518)=reinterpret_cast<int>(data_address(0x421580));kb_lzx_compress(b.data(),data_address(0x421580),b.size());size_t n=word(0x12215a4);write_new_file(argv[3],{data_address(0x421580),data_address(0x421580)+n});return 0;}
    if(cmd=="test-decode"&&argc==5){auto b=read_file(argv[2]);reset_original_data();std::vector<uint8_t> result(std::stoul(argv[4])+65536);if(!(kb_lzx_decompress(b.data(),result.data(),b.size())&255))throw std::runtime_error("decode failed");result.resize(std::stoul(argv[4]));write_new_file(argv[3],result);return 0;}
    throw std::runtime_error("Invalid command or argument count");
 }catch(const std::exception& e){std::cerr<<"Error: "<<e.what()<<"\n";return 1;}
}
