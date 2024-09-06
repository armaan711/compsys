// Mult02.tst
load Mult.asm,
output-file Mult02.out,
compare-to Mult02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[1] 0,  // Set R1
set RAM[2] 5;  // Set R2
repeat 100 {
  ticktock;
}
output;
