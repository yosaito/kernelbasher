/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00401430 */


CComboBox * __thiscall FUN_00401430(CComboBox *param_1,byte param_2)

{
  CComboBox::~CComboBox(param_1);
  if ((param_2 & 1) != 0) {
    operator_delete(param_1);
  }
  return param_1;
}

