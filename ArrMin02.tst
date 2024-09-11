// Test file for ArrMin.asm: All Identical Elements
load ArrMin.asm,
output-file ArrMin02.out,
compare-to ArrMin02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[20]%D2.6.2 RAM[21]%D2.6.2 RAM[22]%D2.6.2 RAM[23]%D2.6.2;

set PC 0,
set RAM[1] 20,
set RAM[2] 4,
set RAM[20] 9,
set RAM[21] 9,
set RAM[22] 9,
set RAM[23] 9;
repeat 300 {
  ticktock;
}
output;
