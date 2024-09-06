// Mult.asm
// Multiplies two non-negative integers stored in R1 and R2.
// Outputs the result into R0.

// Initialize R0 to zero for the result
@R0
M=0

// Check if R2 is zero (since any number multiplied by 0 is 0)
@R2
D=M
@END
D;JEQ

// Setup the counter with the value in R2
@R2
D=M
@COUNTER
M=D

// Loop to add R1 to R0, R2 times
(ADDLOOP)
    @R1
    D=M
    @R0
    M=D+M  // Add R1 to R0
    @COUNTER
    MD=M-1  // Decrement the counter
    @END
    D;JEQ   // If counter is 0, end the loop
    @ADDLOOP
    0;JMP   // Repeat the loop

// End of the program
(END)
    @END
    0;JMP   // Infinite loop to prevent falling through
