// Readable application layer reconstructed from KernelBasher 1.1.
#define NOMINMAX
#include <windows.h>
#include "core_internal.hpp"
#include <algorithm>
#include <cmath>
#include <fstream>
#include <memory>
#include <regex>
#include <sstream>
#include <clocale>
#include "original_tables.inc"

extern "C" {
alignas(16) unsigned char kb_memory[0x160c5cc]{};
alignas(16) unsigned char kb_rdata[0x3000]{};
}
void reset_original_data() {
    std::memset(kb_memory,0,sizeof(kb_memory));
    std::memcpy(kb_memory,initial_data,sizeof(initial_data));
    std::memcpy(kb_rdata,initial_rdata,sizeof(initial_rdata));
}
const ChannelBinding channels[23] = {
    {"Fog colour red",5054,5057,0xd88}, {"Fog colour green",5055,5058,0xd84}, {"Fog colour blue",5056,5059,0xd80},
    {"Initial glow red",5036,5039,0xd7c}, {"Initial glow green",5037,5040,0xd78}, {"Initial glow blue",5038,5041,0xd74},
    {"Main glow red",5025,5021,0xd70}, {"Main glow green",5019,5022,0xd6c}, {"Main glow blue",5024,5023,0xd68},
    {"Scene geometry red",5026,5033,0xd98}, {"Scene geometry green",5027,5034,0xd94}, {"Scene geometry blue",5028,5035,0xd90},
    {"End glow red",5060,5063,0xda4}, {"End glow green",5061,5064,0xda0}, {"End glow blue",5062,5065,0xd9c},
    {"Flubber red",5044,5048,0xdb4}, {"Flubber green",5045,5049,0xdb0}, {"Flubber blue",5046,5050,0xdac}, {"Flubber alpha",5047,5051,0xda8},
    {"Fog alpha",5042,5043,0xd8c},
    {"Splash red",5066,5069,0xdc0}, {"Splash green",5067,5070,0xdbc}, {"Splash blue",5068,5071,0xdb8}
};
const CheckBinding checks[6] = {
    {"White splash",1010,0xdc4},{"White animation",1012,0xd34},{"Keep machinery",1013,0xd30},
    {"Replace logo",5000,0xd48},{"Random camera",5079,0xdd0},{"Wireframe",5093,0xdd8}
};
Options Options::defaults() {
    Options o;
    for(const auto& c:channels) {
        std::string name=c.name;
        o.at(c.member) = name.find("red")!=std::string::npos ? 25 : name.find("green")!=std::string::npos ? 255 : name.find("alpha")!=std::string::npos ? 255 : 70;
        if(name.find("Splash")==0) o.at(c.member)=0;
    }
    return o;
}
std::vector<uint8_t> read_file(const std::filesystem::path& p) {
    std::ifstream f(p,std::ios::binary|std::ios::ate);
    if(!f) throw std::runtime_error("Cannot open file: "+p.string());
    auto n=f.tellg();
    if(n<0||n>8*1024*1024) throw std::runtime_error("Input file exceeds 8 MiB bound");
    std::vector<uint8_t> b(static_cast<size_t>(n)); f.seekg(0);
    if(!f.read(reinterpret_cast<char*>(b.data()),b.size())) throw std::runtime_error("Short file read");
    return b;
}
void write_new_file(const std::filesystem::path& p,const std::vector<uint8_t>& b) {
    HANDLE f=CreateFileW(p.c_str(),GENERIC_WRITE,0,nullptr,CREATE_NEW,FILE_ATTRIBUTE_NORMAL,nullptr);
    if(f==INVALID_HANDLE_VALUE) throw std::runtime_error("Choose a new output filename; could not create file");
    DWORD n=0; bool ok=WriteFile(f,b.data(),static_cast<DWORD>(b.size()),&n,nullptr)&&n==b.size();
    CloseHandle(f);
    if(!ok) { DeleteFileW(p.c_str()); throw std::runtime_error("Output write failed"); }
}
BiosIdentity identify_bios(const std::vector<uint8_t>& b) {
    BiosIdentity r;
    if(b.size()!=0x40000&&b.size()!=0x80000&&b.size()!=0x100000) return r;
    // The original fopen("r") uses MSVCRT text semantics: CRLF collapses and
    // CTRL-Z ends input. It sums 8000 fgetc results, including -1 after EOF.
    size_t p=0; bool eof=false; int sum=0;
    for(int i=0;i<8000;++i) {
        if(eof||p==b.size()) {sum-=1;continue;}
        int c=b[p++]; if(c==26) {eof=true;sum-=1;continue;}
        if(c==13&&p<b.size()&&b[p]==10) {c=10;++p;}
        sum+=c;
    }
    r.checksum=static_cast<uint32_t>(sum);
    switch(sum) {
    case 0x516c1:r.kind=2;r.name="Xecuter 4983.06";break;
    case 0x5160d:r.kind=2;r.name="Xecuter 4983.67";break;
    case 0x501f9:r.kind=1;r.name="Xecuter 4981";break;
    case 0x4fab7:r.kind=3;r.name="Evox M7";break;
    case 0x4a03a:r.kind=4;r.name="Evox M8 1.6";break;
    case 0x4a0c2:r.kind=4;r.name="Evox M8";break;
    }
    return r;
}
static uint32_t read32(const uint8_t* p) {uint32_t v;std::memcpy(&v,p,4);return v;}
static void put32(uint8_t* p,uint32_t v) {std::memcpy(p,&v,4);}
// Twenty slider positions, three bool bytes, one padding byte, then camera char.
static const unsigned preset_members[20]={0xd70,0xd6c,0xd68,0xd7c,0xd78,0xd74,0xda4,0xda0,0xd9c,0xdb4,0xdb0,0xdac,0xda8,0xdcc,0xd88,0xd84,0xd80,0xd98,0xd94,0xd90};
Preset load_preset(const std::filesystem::path& p) {
    auto b=read_file(p); if(b.size()!=88) throw std::runtime_error("A KernelBasher preset must contain exactly 88 bytes");
    Preset r; std::copy(b.begin(),b.end(),r.bytes.begin());
    for(int i=0;i<20;++i) if(read32(b.data()+i*4)>255) throw std::runtime_error("Preset slider is outside 0..255");
    return r;
}
Options apply_preset(const Preset& p,Options o) {
    for(int i=0;i<20;++i) {
        int v=255-read32(p.bytes.data()+i*4);
        if(preset_members[i]==0xdcc)o.radius=v*0.025f;else o.at(preset_members[i])=v;
    }
    // 1.1 writes these fields but never restores them. Preserve that UI behavior.
    return o;
}
Preset make_preset(const Options& o,Preset p) {
    for(int i=0;i<20;++i) {
        int v=preset_members[i]==0xdcc?static_cast<int>(std::lround(o.radius/0.025f)):o.at(preset_members[i]);
        put32(p.bytes.data()+i*4,255-std::clamp(v,0,255));
    }
    p.bytes[80]=o.at(0xdc4)!=0; p.bytes[81]=o.at(0xd30)!=0;p.bytes[82]=o.at(0xd34)!=0;
    put32(p.bytes.data()+84,'0'+o.camera);return p;
}
Logo load_logo(const std::filesystem::path& p) {
    auto b=read_file(p);std::string t(b.begin(),b.end());
    if(t.rfind("xof ",0)!=0||t.substr(8,3)!="txt") throw std::runtime_error("Logo must be a text DirectX .x mesh");
    std::regex mesh(R"(\bMesh\s*(?:[A-Za-z_][A-Za-z_0-9]*)?\s*\{)");std::smatch m;
    if(!std::regex_search(t,m,mesh))throw std::runtime_error("No Mesh block in logo");
    size_t pos=m.position()+m.length();
    auto number=[&]()->double {
        while(pos<t.size()&&(std::isspace(static_cast<unsigned char>(t[pos]))||t[pos]==';'||t[pos]==','))++pos;
        const char* begin=t.c_str()+pos;char* end=nullptr;double n=std::strtod(begin,&end);
        if(end==begin||!std::isfinite(n))throw std::runtime_error("Invalid mesh number");pos=end-t.c_str();return n;
    };
    auto integer=[&]()->unsigned {double v=number();if(v<0||v>100000||v!=std::floor(v))throw std::runtime_error("Invalid mesh count/index");return static_cast<unsigned>(v);};
    Logo logo;unsigned nv=integer();if(nv<2||nv>156)throw std::runtime_error("Logo supports 2..156 vertices");
    for(unsigned i=0;i<nv;++i) {std::array<float,3> v;for(float& c:v){double n=number();if(std::abs(n)>3276.7)throw std::runtime_error("Vertex exceeds packed 16-bit range");c=static_cast<float>(n);}logo.vertices.push_back(v);}
    unsigned nf=integer();if(nf<2||nf>155)throw std::runtime_error("Logo supports 2..155 triangular faces");
    for(unsigned i=0;i<nf;++i){if(integer()!=3)throw std::runtime_error("Only triangular faces are supported");std::array<unsigned,3> f;for(auto& n:f){n=integer();if(n>=nv)throw std::runtime_error("Face index exceeds vertex count");}logo.faces.push_back(f);}
    return logo;
}
static void prepare_logo(const Logo& l) {
    std::vector<float> v(469,0);size_t p=0;for(auto& point:l.vertices)for(float c:point)v[p++]=c;
    double scale;std::memcpy(&scale,data_address(0x412f78),8);
    double negative;std::memcpy(&negative,data_address(0x412f80),8);
    float threshold=read_float(0x412f88);
    for(size_t i=0;i<469;++i){double x=v[i];if(x<threshold)x*=negative;int16_t n=static_cast<int16_t>(static_cast<int>(x*scale));word(0x41efe0+unsigned(i)*8)=static_cast<int8_t>(n&255);word(0x41efe4+unsigned(i)*8)=static_cast<int8_t>((n>>8)&255);}
    std::vector<int> idx(1394,0);p=0;for(auto& f:l.faces)for(auto n:f)idx[p++]=n;
    for(size_t i=1;i<idx.size();++i)word(0x41ff48+unsigned(i)*4)=idx[i]-idx[i-1];
    word(0x41ff48)=idx[0];word(0x41fee4)=idx[0];
}
std::vector<uint8_t> patch_kernel(const std::vector<uint8_t>& bytes,int kind,const Options& o,const Logo* logo,bool strict) {
    if(kind<1||kind>4||bytes.size()<64||bytes.size()>2*1024*1024)throw std::runtime_error("Invalid kernel size or BIOS kind");
    for(auto& c:channels)if(o.at(c.member)<0||o.at(c.member)>255)throw std::runtime_error("Colour channel is outside 0..255");
    if(o.camera<1||o.camera>8||!std::isfinite(o.radius)||o.radius<0||o.radius>6.375f)throw std::runtime_error("Invalid camera/radius");
    if(o.at(0xd48)&&!logo)throw std::runtime_error("Select a logo .x file first");
    reset_original_data();if(logo)prepare_logo(*logo);
    locate_patch_sites(bytes,kind);
    if(strict){
        const unsigned required[]={0x41fef8,0x41fefc,0x41ff04,0x41ff20,0x41ff3c};
        for(unsigned a:required)if(word(a)<1)throw std::runtime_error("Required original patch signature is missing; use an unmodified supported BIOS");
        if(o.at(0xd48)&&word(0x41ff30)<1)throw std::runtime_error("Logo patch signature is missing");
        if(o.at(0xdd0)&&word(0x41ff34)<1)throw std::runtime_error("Random camera signature is missing");
        if(o.at(0xdd8)&&word(0x41ff38)<1)throw std::runtime_error("Wireframe signature is missing");
        if(o.at(0xddc)&&word(0x41ff40)<1)throw std::runtime_error("Torn X signature is missing");
    }
    // Original Torn X checkbox also sets the white-splash global flag.
    word(0x4214fc)=o.at(0xddc)!=0;
    return patch_buffer(bytes,kind,o);
}
std::filesystem::path application_directory(){wchar_t path[32768];DWORD n=GetModuleFileNameW(nullptr,path,32768);if(!n||n==32768)throw std::runtime_error("Cannot locate application folder");return std::filesystem::path(path).parent_path();}

// Workspace directories are unique, automatically removed, and never C:\temp.
struct WorkDirectory {
    std::filesystem::path path;
    WorkDirectory(){wchar_t temp[32768],file[32768];if(!GetTempPathW(32768,temp)||!GetTempFileNameW(temp,L"kbr",0,file))throw std::runtime_error("Cannot create temporary directory");DeleteFileW(file);path=file;std::filesystem::create_directory(path);}
    ~WorkDirectory(){std::error_code e;std::filesystem::remove_all(path,e);}
};
struct XbFlash {
    HMODULE dll=nullptr;
    using Config=int(__cdecl*)(const char*);using Unpack=int(__cdecl*)(const char*,const char*);using Pack=int(__cdecl*)(const char*,const char*,unsigned,const char*,const char*,const char*,const char*);
    Config config;Unpack unpack;Pack pack;
    XbFlash(){auto p=application_directory()/L"xbflash.dll";dll=LoadLibraryExW(p.c_str(),nullptr,LOAD_WITH_ALTERED_SEARCH_PATH);if(!dll)throw std::runtime_error("Cannot load original xbflash.dll / msvcr71.dll beside application");
        config=reinterpret_cast<Config>(GetProcAddress(dll,"?xb_read_config_file@@YAHPBD@Z"));unpack=reinterpret_cast<Unpack>(GetProcAddress(dll,"?xb_unpack@@YAHPBD0@Z"));pack=reinterpret_cast<Pack>(GetProcAddress(dll,"?xb_pack@@YAHPBD0I0000@Z"));
        if(!config||!unpack||!pack)throw std::runtime_error("Incorrect xbflash.dll exports");auto ini=application_directory()/L"config.ini";if(!config(ini.string().c_str()))throw std::runtime_error("xbflash rejected config.ini");}
    ~XbFlash(){if(dll)FreeLibrary(dll);}
};
void check_xbflash_dependency(){XbFlash x;}
void unpack_bios(const std::filesystem::path& in,const std::filesystem::path& out){
    auto bytes=read_file(in);auto id=identify_bios(bytes);if(!id.kind)throw std::runtime_error("Unrecognised BIOS");
    if(id.kind==4){write_new_file(out,unpack_m8(bytes));return;}
    WorkDirectory w;auto kernel=w.path/L"xboxkrnl.img";
    XbFlash x;if(!x.unpack(in.string().c_str(),w.path.string().c_str()))throw std::runtime_error("xbflash extraction failed");
    write_new_file(out,read_file(kernel));
}
void patch_bios(const std::filesystem::path& in,const std::filesystem::path& out,const Options& o,const Logo* logo){
    if(std::filesystem::exists(out))throw std::runtime_error("Output already exists; choose a new filename");
    auto bytes=read_file(in);auto id=identify_bios(bytes);if(!id.kind)throw std::runtime_error("Unrecognised BIOS");
    if(id.kind==4){auto patched=patch_kernel(unpack_m8(bytes),id.kind,o,logo);write_new_file(out,pack_m8(bytes,patched));return;}
    WorkDirectory w;auto kernel=w.path/L"xboxkrnl.img";auto rebuilt=w.path/L"rebuilt.bin";
    XbFlash xb;if(!xb.unpack(in.string().c_str(),w.path.string().c_str()))throw std::runtime_error("xbflash extraction failed");
    auto patched=patch_kernel(read_file(kernel),id.kind,o,logo);std::filesystem::remove(kernel);write_new_file(kernel,patched);
    if(!xb.pack(w.path.string().c_str(),rebuilt.string().c_str(),o.output_size,nullptr,nullptr,nullptr,nullptr))throw std::runtime_error("xbflash packing failed");
    auto result=read_file(rebuilt);if(result.size()!=0x40000&&result.size()!=0x80000&&result.size()!=0x100000)throw std::runtime_error("Unexpected output BIOS size");write_new_file(out,result);
}
