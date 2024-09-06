// Mult01.tst
load Mult.asm,
output-file Mult01.out,
compare-to Mult01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[1] 3,  // Set R1
set RAM[2] 4;  // Set R2
repeat 100 {
  ticktock;
}
output;
