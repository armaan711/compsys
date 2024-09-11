// Test case for multiplying a negative number by a positive number
load Mult.asm,
output-file Mult03.out,
compare-to Mult03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Set R0
set RAM[1] -4, // Set R1 (negative number)
set RAM[2] 5;  // Set R2 (positive number)
repeat 200 {
  ticktock;    // Run for 200 clock cycles
}
set RAM[1] -4, // Restore R1
set RAM[2] 5,  // Restore R2
output;        // Output to file
