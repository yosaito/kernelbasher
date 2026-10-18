/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00410b70 */


/* Library Function - Single Match
    public: void __thiscall ATL::CSimpleArray<struct HINSTANCE__ *,class
   ATL::CSimpleArrayEqualHelper<struct HINSTANCE__ *> >::RemoveAll(void)
   
   Libraries: Visual Studio 2003 Release, Visual Studio 2005 Release, Visual Studio 2008 Release,
   Visual Studio 2010 Release */

void __thiscall
ATL::CSimpleArray<HINSTANCE__*,ATL::CSimpleArrayEqualHelper<HINSTANCE__*>_>::RemoveAll
          (CSimpleArray<HINSTANCE__*,ATL::CSimpleArrayEqualHelper<HINSTANCE__*>_> *this)

{
  if (*(void **)this != (void *)0x0) {
    free(*(void **)this);
    *(undefined4 *)this = 0;
  }
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  return;
}

