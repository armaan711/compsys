// Test case for multiplying a number by one
load Mult.asm,
output-file Mult04.out,
compare-to Mult04.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Set R0
set RAM[1] 7,  // Set R1
set RAM[2] 1;  // Set R2
repeat 200 {
  ticktock;    // Run for 200 clock cycles
}
set RAM[1] 7,  // Restore R1
set RAM[2] 1,  // Restore R2
output;        // Output to file
