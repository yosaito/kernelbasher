/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004052e0 */


CDialog * __thiscall FUN_004052e0(CDialog *param_1,byte param_2)

{
  CDialog::~CDialog(param_1);
  if ((param_2 & 1) != 0) {
    operator_delete(param_1);
  }
  return param_1;
}

