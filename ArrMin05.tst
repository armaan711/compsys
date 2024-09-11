// Test file for ArrMin.asm: Ascending Order
load ArrMin.asm,
output-file ArrMin05.out,
compare-to ArrMin05.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[20]%D2.6.2 RAM[21]%D2.6.2 RAM[22]%D2.6.2;

set PC 0,
set RAM[1] 20,
set RAM[2] 3,
set RAM[20] 3,
set RAM[21] 7,
set RAM[22] 14;
repeat 300 {
  ticktock;
}
output;
