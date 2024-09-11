// Test file for ArrMin.asm: Mixed Values
load ArrMin.asm,
output-file ArrMin01.out,
compare-to ArrMin01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[20]%D2.6.2 RAM[21]%D2.6.2 RAM[22]%D2.6.2 RAM[23]%D2.6.2;

set PC 0,
set RAM[1] 20, // R1 points to the first element of the array
set RAM[2] 4,  // R2 is the length of the array
set RAM[20] 5, // Array starts here
set RAM[21] 12,
set RAM[22] 7,
set RAM[23] 4;
repeat 300 {
  ticktock;
}
output;
