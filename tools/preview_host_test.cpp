// Exercise the compiled dialog resource: a headless browser cannot detect
// native sibling windows covering an otherwise healthy WebView2 renderer.
#define NOMINMAX
#include <windows.h>
#include <commctrl.h>
#include <cstdio>
#include <cwchar>

static INT_PTR CALLBACK dialog_proc(HWND, UINT, WPARAM, LPARAM) { return FALSE; }

int wmain(int argc, wchar_t** argv) {
    if (argc != 2) { std::fwprintf(stderr, L"Usage: preview_host_test KernelBasher.exe\n"); return 2; }
    INITCOMMONCONTROLSEX controls{sizeof(controls), ICC_BAR_CLASSES | ICC_PROGRESS_CLASS};
    InitCommonControlsEx(&controls);
    auto module = LoadLibraryExW(argv[1], nullptr, LOAD_LIBRARY_AS_DATAFILE | LOAD_LIBRARY_AS_IMAGE_RESOURCE);
    if (!module) { std::fprintf(stderr, "Cannot load executable resources: %lu\n", GetLastError()); return 2; }
    // This creates the real Win32 controls, but never starts the application or
    // WebView2. Hide the test dialog immediately; window styles retain visibility.
    auto dialog = CreateDialogParamW(module, MAKEINTRESOURCEW(102), nullptr, dialog_proc, 0);
    if (!dialog) { std::fprintf(stderr, "Cannot create dialog: %lu\n", GetLastError()); FreeLibrary(module); return 2; }
    ShowWindow(dialog, SW_HIDE);
    auto host = GetDlgItem(dialog, 5100);
    RECT bounds{};
    bool passed = host && GetWindowRect(host, &bounds) && bounds.right > bounds.left && bounds.bottom > bounds.top;
    if (!passed) std::fprintf(stderr, "Preview host missing or empty\n");
    for (auto sibling = host ? GetWindow(host, GW_HWNDPREV) : nullptr; sibling; sibling = GetWindow(sibling, GW_HWNDPREV)) {
        if (!(GetWindowLongPtr(sibling, GWL_STYLE) & WS_VISIBLE)) continue;
        RECT other{}, overlap{}; GetWindowRect(sibling, &other);
        if (IntersectRect(&overlap, &bounds, &other)) {
            wchar_t text[128]{}; GetWindowTextW(sibling, text, 128);
            std::fwprintf(stderr, L"FAIL: preview host is covered by a higher sibling: %ls (id %d)\n", text, GetDlgCtrlID(sibling));
            passed = false;
        }
    }
    DestroyWindow(dialog); FreeLibrary(module);
    if (passed) std::puts("PASS: compiled native preview host has nonzero bounds and no covering siblings");
    return passed ? 0 : 1;
}
