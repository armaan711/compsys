// Mult03.tst
load Mult.asm,
output-file Mult03.out,
compare-to Mult03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[1] 0,  // Set R1 to zero
set RAM[2] 0;  // Set R2 to zero
repeat 100 {
  ticktock;
}
output;
