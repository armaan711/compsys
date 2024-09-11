// Test file for ArrMin.asm: Single Element
load ArrMin.asm,
output-file ArrMin03.out,
compare-to ArrMin03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[20]%D2.6.2;

set PC 0,
set RAM[1] 20,
set RAM[2] 1,
set RAM[20] 15;
repeat 300 {
  ticktock;
}
output;
