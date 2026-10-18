/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00410ba7 */


/* Library Function - Single Match
    public: __thiscall ATL::CAtlBaseModule::~CAtlBaseModule(void)
   
   Libraries: Visual Studio 2003 Release, Visual Studio 2005 Release */

void __thiscall ATL::CAtlBaseModule::~CAtlBaseModule(CAtlBaseModule *this)

{
  DeleteCriticalSection((LPCRITICAL_SECTION)(this + 0x18));
  CSimpleArray<HINSTANCE__*,ATL::CSimpleArrayEqualHelper<HINSTANCE__*>_>::RemoveAll
            ((CSimpleArray<HINSTANCE__*,ATL::CSimpleArrayEqualHelper<HINSTANCE__*>_> *)(this + 0x30)
            );
  return;
}

