// Native Win32 replacement for the MFC dialog shell. Resource positions,
// identifiers and captions are recovered from the original executable.
#define NOMINMAX
#include <windows.h>
#include <commctrl.h>
#include <commdlg.h>
#include "core.hpp"
#include "preview.hpp"
#include <algorithm>
#include <cmath>
#include <memory>
#include <string>

struct UiState {
    Options options=Options::defaults();Preset preset{};
    std::filesystem::path bios_path,logo_path;
    BiosIdentity bios;
    std::unique_ptr<Logo> logo;
    HBRUSH brushes[7]{};
    BootPreview preview;
    bool updating=false;
    ~UiState(){for(auto b:brushes)if(b)DeleteObject(b);}
};
static std::filesystem::path choose(HWND h,bool save,const wchar_t* filter,const wchar_t* extension){
    wchar_t file[32768]{};OPENFILENAMEW ofn{};ofn.lStructSize=sizeof(ofn);ofn.hwndOwner=h;ofn.lpstrFile=file;ofn.nMaxFile=32768;ofn.lpstrFilter=filter;ofn.lpstrDefExt=extension;ofn.Flags=OFN_EXPLORER|OFN_NOCHANGEDIR|OFN_PATHMUSTEXIST|(save?0:OFN_FILEMUSTEXIST);
    if(save?GetSaveFileNameW(&ofn):GetOpenFileNameW(&ofn))return file;return {};
}
static void update_controls(HWND h,UiState& s,bool set_sliders=true){
    s.updating=true;
    for(const auto& c:channels){if(set_sliders)SendDlgItemMessage(h,c.slider,TBM_SETPOS,TRUE,255-s.options.at(c.member));SetDlgItemInt(h,c.edit,s.options.at(c.member),FALSE);}
    if(set_sliders)SendDlgItemMessage(h,5052,TBM_SETPOS,TRUE,255-static_cast<int>(std::lround(s.options.radius/0.025f)));
    wchar_t radius[32];swprintf_s(radius,L"%.3f",s.options.radius);SetDlgItemTextW(h,5053,radius);
    for(auto c:checks)CheckDlgButton(h,c.control,s.options.at(c.member)?BST_CHECKED:BST_UNCHECKED);
    CheckDlgButton(h,5094,s.options.at(0xddc)?BST_CHECKED:BST_UNCHECKED);
    SendDlgItemMessage(h,1014,CB_SETCURSEL,s.options.camera-1,0);
    const unsigned groups[7][3]={{0xd88,0xd84,0xd80},{0xd7c,0xd78,0xd74},{0xd70,0xd6c,0xd68},{0xd98,0xd94,0xd90},{0xda4,0xda0,0xd9c},{0xdb4,0xdb0,0xdac},{0xdc0,0xdbc,0xdb8}};
    const int ids[]={5080,5081,5082,5083,5084,5085,5086};
    for(int i=0;i<7;++i){if(s.brushes[i])DeleteObject(s.brushes[i]);s.brushes[i]=CreateSolidBrush(RGB(s.options.at(groups[i][0]),s.options.at(groups[i][1]),s.options.at(groups[i][2])));InvalidateRect(GetDlgItem(h,ids[i]),nullptr,TRUE);}
    bool loaded=s.bios.kind!=0;
    EnableWindow(GetDlgItem(h,1000),loaded);EnableWindow(GetDlgItem(h,1025),s.options.at(0xd48));
    EnableWindow(GetDlgItem(h,1010),loaded&&s.bios.kind!=4);EnableWindow(GetDlgItem(h,1012),loaded&&s.bios.kind!=4);EnableWindow(GetDlgItem(h,5094),loaded&&s.bios.kind!=4);
    s.updating=false;
    s.preview.update(s.options,s.logo.get(),s.bios.kind);
}
static void init_combos(HWND h){
    const char* camera[]={"1(Default)","2 start low, move up, drift right, pull out","3 Drunken","4 Look low, closeup bottom, pan up & out.","5 Orbit left","6 Rotate to left, fairly close","7 Start low,quickly up and right,pull out","8 Start low, rotate up & pull out"};
    for(auto c:camera)SendDlgItemMessageA(h,1014,CB_ADDSTRING,0,reinterpret_cast<LPARAM>(c));
    for(auto c:{"256k","512K","1MB"})SendDlgItemMessageA(h,1006,CB_ADDSTRING,0,reinterpret_cast<LPARAM>(c));
    SendDlgItemMessage(h,1006,CB_SETCURSEL,0,0);
}
static INT_PTR CALLBACK dialog_proc(HWND h,UINT message,WPARAM w,LPARAM l){
    auto s=reinterpret_cast<UiState*>(GetWindowLongPtr(h,DWLP_USER));
    try {
    if(message==WM_INITDIALOG){s=reinterpret_cast<UiState*>(l);SetWindowLongPtr(h,DWLP_USER,l);init_combos(h);for(auto c:channels)SendDlgItemMessage(h,c.slider,TBM_SETRANGE,TRUE,MAKELPARAM(0,255));SendDlgItemMessage(h,5052,TBM_SETRANGE,TRUE,MAKELPARAM(0,255));
        SendMessage(h,WM_SETICON,ICON_BIG,reinterpret_cast<LPARAM>(LoadIcon(GetModuleHandle(nullptr),MAKEINTRESOURCE(128))));SetWindowTextW(h,L"KernelBasher 1.1 - reconstructed source build");
        EnableWindow(GetDlgItem(h,5095),FALSE);update_controls(h,*s);s->preview.start(h,5100);return TRUE;}
    if(!s)return FALSE;
    if(message==WM_SIZE){s->preview.visible(w!=SIZE_MINIMIZED);return FALSE;}
    if(message==WM_DESTROY){s->preview.close();return TRUE;}
    if(message==WM_CLOSE){EndDialog(h,0);return TRUE;}
    if(message==WM_VSCROLL||message==WM_HSCROLL){if(s->updating)return TRUE;for(auto c:channels)s->options.at(c.member)=255-static_cast<int>(SendDlgItemMessage(h,c.slider,TBM_GETPOS,0,0));s->options.radius=(255-static_cast<int>(SendDlgItemMessage(h,5052,TBM_GETPOS,0,0)))*0.025f;update_controls(h,*s,false);return TRUE;}
    if(message==WM_CTLCOLORSTATIC){const int ids[]={5080,5081,5082,5083,5084,5085,5086};int id=GetDlgCtrlID(reinterpret_cast<HWND>(l));for(int i=0;i<7;++i)if(id==ids[i]){SetBkMode(reinterpret_cast<HDC>(w),TRANSPARENT);return reinterpret_cast<INT_PTR>(s->brushes[i]);}}
    if(message!=WM_COMMAND||s->updating)return FALSE;
    int id=LOWORD(w),event=HIWORD(w);
    if(id==IDCANCEL){EndDialog(h,0);return TRUE;}
    if(id==1006&&event==CBN_SELCHANGE){int n=static_cast<int>(SendDlgItemMessage(h,id,CB_GETCURSEL,0,0));s->options.output_size=0x40000<<n;return TRUE;}
    if(id==1014&&event==CBN_SELCHANGE){s->options.camera=1+static_cast<int>(SendDlgItemMessage(h,id,CB_GETCURSEL,0,0));s->preview.update(s->options,s->logo.get(),s->bios.kind);return TRUE;}
    if(event==EN_CHANGE){
        bool changed=false;
        for(auto c:channels)if(id==c.edit){BOOL ok;unsigned n=GetDlgItemInt(h,id,&ok,FALSE);if(ok){s->options.at(c.member)=std::min(n,255u);changed=true;}}
        if(id==5053){wchar_t text[32];GetDlgItemTextW(h,id,text,32);wchar_t* end;double r=wcstod(text,&end);if(end!=text&&!*end&&std::isfinite(r)){s->options.radius=static_cast<float>(std::clamp(r,0.0,6.375));changed=true;}}
        if(changed)s->preview.update(s->options,s->logo.get(),s->bios.kind);
        return changed;
    }
    if(event==EN_KILLFOCUS){for(auto c:channels)if(id==c.edit){BOOL ok;int n=GetDlgItemInt(h,id,&ok,FALSE);if(ok)s->options.at(c.member)=std::clamp(n,0,255);update_controls(h,*s);return TRUE;}if(id==5053){wchar_t text[32];GetDlgItemTextW(h,id,text,32);float r=static_cast<float>(wcstod(text,nullptr));if(std::isfinite(r))s->options.radius=std::clamp(r,0.0f,6.375f);update_controls(h,*s);return TRUE;}}
    if(event!=BN_CLICKED)return FALSE;
    for(auto c:checks)if(id==c.control){s->options.at(c.member)=IsDlgButtonChecked(h,id)==BST_CHECKED;update_controls(h,*s);return TRUE;}
    if(id==5094){s->options.at(0xddc)=IsDlgButtonChecked(h,id)==BST_CHECKED;update_controls(h,*s);return TRUE;}
    if(id==1024){auto p=choose(h,false,L"Xbox BIOS (*.bin)\0*.bin\0\0",L"bin");if(p.empty())return TRUE;auto b=identify_bios(read_file(p));s->bios_path=p;s->bios=b;SetDlgItemTextW(h,5010,p.filename().c_str());SetDlgItemTextA(h,5014,b.name.c_str());update_controls(h,*s);if(!b.kind)MessageBoxW(h,L"The original KernelBasher identification checks do not recognise this BIOS.",L"KernelBasher",MB_ICONINFORMATION);return TRUE;}
    if(id==1025){auto p=choose(h,false,L"DirectX text mesh (*.x)\0*.x\0\0",L"x");if(p.empty())return TRUE;auto logo=std::make_unique<Logo>(load_logo(p));SetDlgItemTextW(h,5004,p.filename().c_str());SetDlgItemInt(h,5002,logo->faces.size(),FALSE);SetDlgItemInt(h,5003,logo->vertices.size(),FALSE);s->logo=std::move(logo);s->logo_path=p;s->preview.update(s->options,s->logo.get(),s->bios.kind);return TRUE;}
    if(id==5088){auto p=choose(h,false,L"KernelBasher preset (*.kbp)\0*.kbp\0\0",L"kbp");if(p.empty())return TRUE;s->preset=load_preset(p);s->options=apply_preset(s->preset,s->options);update_controls(h,*s);return TRUE;}
    if(id==5087){auto p=choose(h,true,L"KernelBasher preset (*.kbp)\0*.kbp\0\0",L"kbp");if(p.empty())return TRUE;s->preset=make_preset(s->options,s->preset);write_new_file(p,{s->preset.bytes.begin(),s->preset.bytes.end()});return TRUE;}
    if(id==1000){auto p=choose(h,true,L"Xbox BIOS (*.bin)\0*.bin\0\0",L"bin");if(p.empty())return TRUE;SendDlgItemMessage(h,5074,PBM_SETPOS,10,0);patch_bios(s->bios_path,p,s->options,s->logo.get());SendDlgItemMessage(h,5074,PBM_SETPOS,100,0);MessageBoxW(h,L"Patched BIOS saved. The original input file was preserved.",L"KernelBasher",MB_ICONINFORMATION);return TRUE;}
    }catch(const std::exception& e){MessageBoxA(h,e.what(),"KernelBasher",MB_ICONERROR);if(s)SendDlgItemMessage(h,5074,PBM_SETPOS,0,0);return TRUE;}
    return FALSE;
}
int WINAPI wWinMain(HINSTANCE instance,HINSTANCE,PWSTR,int){
    auto com=CoInitializeEx(nullptr,COINIT_APARTMENTTHREADED);
    INITCOMMONCONTROLSEX controls{sizeof(controls),ICC_BAR_CLASSES|ICC_PROGRESS_CLASS};InitCommonControlsEx(&controls);UiState state;
    auto result=DialogBoxParamW(instance,MAKEINTRESOURCEW(102),nullptr,dialog_proc,reinterpret_cast<LPARAM>(&state));
    state.preview.close();if(SUCCEEDED(com))CoUninitialize();
    if(result==-1){MessageBoxW(nullptr,L"Unable to create recovered dialog.",L"KernelBasher",MB_ICONERROR);return 1;}return 0;
}
