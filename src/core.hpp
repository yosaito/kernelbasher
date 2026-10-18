#pragma once
#include <array>
#include <cstdint>
#include <filesystem>
#include <string>
#include <vector>

// Original DDX member positions are retained as evidence anchors, while each
// public setting has a name. Colours are integer channels in [0,255].
struct Options {
    std::array<int, 0xe00/4> fields{};
    int camera = 1;
    float radius = 3.25f;
    std::uint32_t output_size = 256*1024;
    int& at(unsigned offset) { return fields.at(offset/4); }
    int at(unsigned offset) const { return fields.at(offset/4); }
    static Options defaults();
};
struct ChannelBinding { const char* name; unsigned slider, edit, member; };
extern const ChannelBinding channels[23];
struct CheckBinding { const char* name; unsigned control, member; };
extern const CheckBinding checks[6];
struct Preset { std::array<std::uint8_t,88> bytes{}; };
struct Logo {
    std::vector<std::array<float,3>> vertices;
    std::vector<std::array<unsigned,3>> faces;
};
struct BiosIdentity { int kind = 0; std::string name = "Unknown"; std::uint32_t checksum = 0; };

std::vector<std::uint8_t> read_file(const std::filesystem::path& path);
void write_new_file(const std::filesystem::path&, const std::vector<std::uint8_t>&);
BiosIdentity identify_bios(const std::vector<std::uint8_t>&);
Preset load_preset(const std::filesystem::path&);
Options apply_preset(const Preset&, Options);
Preset make_preset(const Options&, Preset preserved = {});
Logo load_logo(const std::filesystem::path&);
std::vector<std::uint8_t> patch_kernel(const std::vector<std::uint8_t>&, int kind, const Options&, const Logo* = nullptr, bool strict = true);
void patch_bios(const std::filesystem::path& input, const std::filesystem::path& output, const Options&, const Logo*);
void unpack_bios(const std::filesystem::path& input, const std::filesystem::path& output);
std::filesystem::path application_directory();
