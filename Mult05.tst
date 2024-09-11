// Test case for multiplying large numbers
load Mult.asm,
output-file Mult05.out,
compare-to Mult05.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Set R0
set RAM[1] 100,  // Set R1 (large number)
set RAM[2] 50;   // Set R2 (large number)
repeat 200 {
  ticktock;    // Run for 200 clock cycles
}
set RAM[1] 100,  // Restore R1
set RAM[2] 50,   // Restore R2
output;          // Output to file
