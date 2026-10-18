/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00410afd */


/* Library Function - Single Match
    ___security_init_cookie
   
   Library: Visual Studio 2003 Release */

void __cdecl ___security_init_cookie(void)

{
  DWORD DVar1;
  DWORD DVar2;
  DWORD DVar3;
  LARGE_INTEGER local_14;
  _FILETIME local_c;
  
  if ((DAT_0041e170 == 0) || (DAT_0041e170 == 0xbb40e64e)) {
    GetSystemTimeAsFileTime(&local_c);
    DVar1 = GetCurrentProcessId();
    DVar2 = GetCurrentThreadId();
    DVar3 = GetTickCount();
    QueryPerformanceCounter(&local_14);
    DAT_0041e170 = local_c.dwHighDateTime ^ local_c.dwLowDateTime ^ DVar1 ^ DVar2 ^ DVar3 ^
                   local_14.s.HighPart ^ local_14.s.LowPart;
    if (DAT_0041e170 == 0) {
      DAT_0041e170 = 0xbb40e64e;
    }
  }
  return;
}

