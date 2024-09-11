// Test case for multiplying two negative numbers
load Mult.asm,
output-file Mult02.out,
compare-to Mult02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Set R0
set RAM[1] -3, // Set R1 (negative number)
set RAM[2] -2; // Set R2 (negative number)
repeat 200 {
  ticktock;    // Run for 200 clock cycles
}
set RAM[1] -3, // Restore R1
set RAM[2] -2, // Restore R2
output;        // Output to file
