@echo off
setlocal
cd /d "%~dp0"
if defined VCToolsInstallDir goto compiler_ready
set "KB_VSROOT="
if exist "C:\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" set "KB_VSROOT=C:\BuildTools"
if defined KB_VSROOT goto configure_compiler
if exist "%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" for /f "usebackq tokens=*" %%i in (`"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath`) do set "KB_VSROOT=%%i"
if not defined KB_VSROOT (
  echo Install Visual Studio C++ Build Tools with x86 tools and a Windows SDK.
  exit /b 1
)
:configure_compiler
call "%KB_VSROOT%\VC\Auxiliary\Build\vcvarsall.bat" x86 >nul
if errorlevel 1 exit /b 1
:compiler_ready
if defined VSCMD_ARG_TGT_ARCH if /i not "%VSCMD_ARG_TGT_ARCH%"=="x86" (
  echo Run build.cmd from an x86 Native Tools command prompt.
  exit /b 1
)
if not exist build mkdir build
ml /nologo /c /coff /Fobuild\m8_codec.obj src\m8_codec.asm
if errorlevel 1 exit /b 1
cl /nologo /std:c++17 /EHsc /MT /O2 /arch:IA32 /D_CRT_SECURE_NO_WARNINGS /Fobuild\ /Febuild\KernelBasher-cli.exe src\core.cpp src\patch_engine.cpp src\m8_container.cpp src\cli.cpp build\m8_codec.obj /link user32.lib
if errorlevel 1 exit /b 1
python tools\build_preview.py
if errorlevel 1 exit /b 1
python tools\build_resources.py
if errorlevel 1 exit /b 1
rc /nologo /fo build\KernelBasher.res /i src src\KernelBasher.rc
if errorlevel 1 exit /b 1
cl /nologo /std:c++17 /EHsc /MT /O2 /arch:IA32 /D_UNICODE /DUNICODE /D_CRT_SECURE_NO_WARNINGS /Fobuild\ /Febuild\KernelBasher.exe src\gui.cpp src\preview.cpp build\core.obj build\patch_engine.obj build\m8_container.obj build\m8_codec.obj build\KernelBasher.res build\original_resources.res /link /SUBSYSTEM:WINDOWS user32.lib gdi32.lib comctl32.lib comdlg32.lib ole32.lib oleaut32.lib shell32.lib version.lib advapi32.lib third_party\webview2\WebView2LoaderStatic.lib
if errorlevel 1 exit /b 1
cl /nologo /EHsc /MT /O2 /DUNICODE /D_UNICODE /Fobuild\preview_host_test.obj /Febuild\preview_host_test.exe tools\preview_host_test.cpp /link user32.lib comctl32.lib
if errorlevel 1 exit /b 1
build\preview_host_test.exe "%CD%\build\KernelBasher.exe"
if errorlevel 1 exit /b 1
copy /y "original\extracted\xbflash.dll" "build\xbflash.dll" >nul
if errorlevel 1 exit /b 1
copy /y "original\extracted\$SYSDIR\msvcr71.dll" "build\msvcr71.dll" >nul
if errorlevel 1 exit /b 1
copy /y "original\extracted\config.ini" "build\config.ini" >nul
if errorlevel 1 exit /b 1
exit /b 0
