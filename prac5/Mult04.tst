// Mult04.tst
load Mult.asm,
output-file Mult04.out,
compare-to Mult04.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[1] 100,  // Set R1 to a large number
set RAM[2] 5;    // Set R2 to a smaller number
repeat 100 {
  ticktock;
}
output;
