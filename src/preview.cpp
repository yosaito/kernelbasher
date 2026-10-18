#define NOMINMAX
#include "preview.hpp"
#include "../third_party/webview2/WebView2.h"
#include <wrl.h>
#include <shlobj.h>
#include <sstream>
#include <locale>

using Microsoft::WRL::ComPtr;
using Microsoft::WRL::Callback;
namespace {
constexpr wchar_t origin[] = L"https://kernelbasher.local/";
bool local_uri(const wchar_t* uri) {
    return uri && wcsncmp(uri, origin, wcslen(origin)) == 0;
}
}
struct BootPreview::State {
    HWND dialog{}, placeholder{};
    bool closed=false, ready=false;
    std::wstring latest;
    ComPtr<ICoreWebView2Controller> controller;
    ComPtr<ICoreWebView2> view;
    void error(const wchar_t* text) {
        if(!closed && IsWindow(placeholder)) SetWindowTextW(placeholder,text);
    }
    void send() { if(!closed && ready && view && !latest.empty()) view->PostWebMessageAsJson(latest.c_str()); }
    void stop() {
        closed=true; ready=false;
        if(controller) controller->Close();
        view.Reset(); controller.Reset();
    }
};
BootPreview::BootPreview():state_(std::make_shared<State>()){}
BootPreview::~BootPreview(){close();}
void BootPreview::close(){state_->stop();}
void BootPreview::visible(bool show){if(state_->controller&&!state_->closed)state_->controller->put_IsVisible(show);}
void BootPreview::start(HWND dialog,int placeholder) {
    auto s=state_; s->dialog=dialog;s->placeholder=GetDlgItem(dialog,placeholder);
    auto assets=application_directory()/L"preview";
    if(!std::filesystem::exists(assets/L"index.html")) {
        s->error(L"Preview files are missing. Extract the complete Windows package beside KernelBasher.exe.");return;
    }
    PWSTR local=nullptr;
    if(FAILED(SHGetKnownFolderPath(FOLDERID_LocalAppData,0,nullptr,&local))){s->error(L"Cannot create preview cache.");return;}
    auto cache=std::filesystem::path(local)/L"KernelBasher"/L"WebView2";CoTaskMemFree(local);
    // WebView2 owns its cache, outside the portable installation directory.
    auto hr=CreateCoreWebView2EnvironmentWithOptions(nullptr,cache.c_str(),nullptr,
      Callback<ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler>(
        [s,assets](HRESULT hr,ICoreWebView2Environment* env)->HRESULT {
          if(s->closed)return S_OK;
          if(FAILED(hr)||!env){s->error(L"Live preview needs Microsoft Edge WebView2 Runtime. Install it, then reopen KernelBasher. BIOS editing is still available.");return S_OK;}
          auto result=env->CreateCoreWebView2Controller(s->placeholder,
            Callback<ICoreWebView2CreateCoreWebView2ControllerCompletedHandler>(
              [s,assets](HRESULT hr,ICoreWebView2Controller* controller)->HRESULT {
                if(s->closed){if(controller)controller->Close();return S_OK;}
                if(FAILED(hr)||!controller){s->error(L"Unable to create the animation preview.");return S_OK;}
                s->controller=controller;controller->get_CoreWebView2(&s->view);
                if(!s->view){s->error(L"Unable to initialise the animation preview.");return S_OK;}
                RECT bounds{};GetClientRect(s->placeholder,&bounds);
                controller->put_Bounds(bounds);
                ComPtr<ICoreWebView2Settings> settings;s->view->get_Settings(&settings);
                if(settings){settings->put_AreDefaultContextMenusEnabled(FALSE);settings->put_AreDevToolsEnabled(FALSE);settings->put_IsZoomControlEnabled(FALSE);settings->put_AreDefaultScriptDialogsEnabled(FALSE);}
                ComPtr<ICoreWebView2_3> view3;
                if(FAILED(s->view.As(&view3)) || FAILED(view3->SetVirtualHostNameToFolderMapping(
                    L"kernelbasher.local",assets.c_str(),COREWEBVIEW2_HOST_RESOURCE_ACCESS_KIND_DENY_CORS))) {
                    s->error(L"Update Microsoft Edge WebView2 Runtime to enable the preview.");return S_OK;
                }
                // No remote page can receive the settings bridge. No host objects, file paths or BIOS bytes are exposed.
                EventRegistrationToken token{};
                s->view->add_NavigationStarting(Callback<ICoreWebView2NavigationStartingEventHandler>(
                    [](ICoreWebView2*,ICoreWebView2NavigationStartingEventArgs* args)->HRESULT{
                        LPWSTR uri=nullptr;args->get_Uri(&uri);if(!local_uri(uri))args->put_Cancel(TRUE);CoTaskMemFree(uri);return S_OK;
                    }).Get(),&token);
                s->view->add_NewWindowRequested(Callback<ICoreWebView2NewWindowRequestedEventHandler>(
                    [](ICoreWebView2*,ICoreWebView2NewWindowRequestedEventArgs* args)->HRESULT{args->put_Handled(TRUE);return S_OK;}).Get(),&token);
                // Weak references avoid a view -> event -> state -> view ownership cycle.
                std::weak_ptr<State> weak=s;
                s->view->add_WebMessageReceived(Callback<ICoreWebView2WebMessageReceivedEventHandler>(
                    [weak](ICoreWebView2*,ICoreWebView2WebMessageReceivedEventArgs* args)->HRESULT{
                        auto p=weak.lock();if(!p||p->closed)return S_OK;
                        LPWSTR source=nullptr;args->get_Source(&source);bool local=local_uri(source);CoTaskMemFree(source);
                        LPWSTR msg=nullptr;
                        if(local&&SUCCEEDED(args->TryGetWebMessageAsString(&msg))&&msg){
                            if(wcscmp(msg,L"ready")==0){p->ready=true;p->send();}
                            if(wcscmp(msg,L"escape")==0)PostMessageW(p->dialog,WM_CLOSE,0,0);
                        }
                        CoTaskMemFree(msg);return S_OK;
                    }).Get(),&token);
                s->view->add_NavigationCompleted(Callback<ICoreWebView2NavigationCompletedEventHandler>(
                    [weak](ICoreWebView2*,ICoreWebView2NavigationCompletedEventArgs* args)->HRESULT{
                        auto p=weak.lock();if(!p||p->closed)return S_OK;BOOL ok=FALSE;args->get_IsSuccess(&ok);
                        if(ok){SetWindowTextW(p->placeholder,L"");p->controller->put_IsVisible(TRUE);}
                        else {p->controller->put_IsVisible(FALSE);p->error(L"The bundled animation page could not be loaded.");}return S_OK;
                    }).Get(),&token);
                controller->put_IsVisible(FALSE);
                s->view->Navigate(L"https://kernelbasher.local/index.html");return S_OK;
              }).Get());
          if(FAILED(result))s->error(L"Unable to start the preview controller.");return S_OK;
        }).Get());
    if(FAILED(hr))s->error(L"Live preview needs Microsoft Edge WebView2 Runtime. Install it, then reopen KernelBasher. BIOS editing is still available.");
}
void BootPreview::update(const Options& o,const Logo* logo,int kind) {
    std::wostringstream j;j.imbue(std::locale::classic());j.precision(9);
    j<<L"{\"type\":\"settings\",\"colours\":[";
    const unsigned offsets[]={0xd88,0xd84,0xd80,0xd7c,0xd78,0xd74,0xd70,0xd6c,0xd68,
        0xd98,0xd94,0xd90,0xda4,0xda0,0xd9c,0xdb4,0xdb0,0xdac,0xda8};
    for(unsigned i=0;i<19;++i){if(i)j<<L',';j<<o.at(offsets[i]);}
    j<<L"],\"radius\":"<<o.radius<<L",\"camera\":"<<o.camera
     <<L",\"random\":"<<o.at(0xdd0)<<L",\"wire\":"<<o.at(0xdd8)
     <<L",\"whiteAnimation\":"<<(kind!=4&&o.at(0xd34))<<L",\"whiteSplash\":"<<(kind!=4&&o.at(0xdc4))
     <<L",\"keepMachinery\":"<<o.at(0xd30)<<L",\"torn\":"<<(kind!=4&&o.at(0xddc))<<L",\"logo\":";
    if(o.at(0xd48)&&logo){
        j<<L"{\"vertices\":[";bool first=true;
        for(auto& v:logo->vertices)for(float c:v){if(!first)j<<L',';first=false;j<<c;}
        j<<L"],\"indices\":[";first=true;
        for(auto& f:logo->faces)for(unsigned n:f){if(!first)j<<L',';first=false;j<<n;}j<<L"]}";
    }else j<<L"null";
    j<<L'}';state_->latest=j.str();state_->send();
}
