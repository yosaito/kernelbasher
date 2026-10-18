#pragma once
#include <algorithm>
#include <array>
#include <cstdint>
#include <cstring>
#include <stdexcept>
#include <utility>
#include <vector>

// One immutable input, one bulk-copied output. No files or CRT streams.
// Separate cursors preserve the recovered routine's look-ahead convention:
// at a patch boundary, input_position == output_position + 1.
class MemoryPatch {
    const std::vector<uint8_t>& input_;
    std::vector<uint8_t> output_;
    size_t read_position_ = 0;
    size_t write_position_ = 0;
    std::vector<size_t> sites_;
    size_t next_site_ = 0;
public:
    MemoryPatch(const std::vector<uint8_t>& input, const std::array<int32_t,20>& sites)
        : input_(input), output_(input.size()) {
        if(!input.empty())std::memcpy(output_.data(),input.data(),input.size());
        for(int32_t site:sites)if(site>0&&size_t(site)<=input.size())sites_.push_back(size_t(site));
        std::sort(sites_.begin(),sites_.end());
        sites_.erase(std::unique(sites_.begin(),sites_.end()),sites_.end());
    }
    int read() {
        return read_position_<input_.size()?input_[read_position_++]:-1;
    }
    long position() const { return static_cast<long>(read_position_); }
    void write(int value) {
        if(write_position_==output_.size())throw std::runtime_error("Patch exceeds kernel buffer");
        output_[write_position_++]=static_cast<uint8_t>(value);
    }
    // Leave already-copied bytes untouched and jump to the next candidate.
    // Called only at the outer patch-loop boundary, preserving handler ordering
    // and the original behavior when one patch consumes a later patch site.
    bool next_patch(int& current_byte) {
        if(read_position_!=write_position_+1)
            throw std::runtime_error("Patch cursor alignment changed");
        while(next_site_<sites_.size()&&sites_[next_site_]<read_position_)++next_site_;
        if(next_site_==sites_.size()){
            write_position_=output_.size();
            return false;
        }
        const size_t target=sites_[next_site_];
        if(target>read_position_){
            write_position_+=target-read_position_;
            read_position_=target-1;
            current_byte=read();
        }
        return true;
    }
    std::vector<uint8_t> finish() {
        if(write_position_!=output_.size())throw std::runtime_error("Patched kernel changed size");
        return std::move(output_);
    }
};
