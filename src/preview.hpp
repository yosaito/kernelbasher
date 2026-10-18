#pragma once
#include <windows.h>
#include <memory>
#include "core.hpp"

// Owns the asynchronous WebView lifetime independently of the stack dialog state.
class BootPreview {
public:
    BootPreview();
    ~BootPreview();
    void start(HWND dialog, int placeholder);
    void update(const Options&, const Logo*, int bios_kind);
    void close();
    void visible(bool);
private:
    struct State;
    std::shared_ptr<State> state_;
};
