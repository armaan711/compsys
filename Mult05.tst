// Mult05.tst
load Mult.asm,
output-file Mult05.out,
compare-to Mult05.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[1] 100,  // Set R1 to 100
set RAM[2] 1;    // Set R2 to 1
repeat 100 {
  ticktock;
}
output;
