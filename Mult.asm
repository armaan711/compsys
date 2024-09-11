// Mult.asm
// Multiplies two non-negative integers stored in R1 and R2.
// Outputs the result into R0.

(START)
    @R0
    M=0            // Initialize R0 to 0, to store the result of the multiplication
    @R3
    M=0            // R3 is used to count the number of negative numbers

    // Check if R1 is negative
    @R1
    D=M
    @labelTrueR1
    D;JLT          // If R1 is less than zero, handle negation

(secondInteger)
    // Check if R2 is negative
    @R2
    D=M
    @labelTrueR2
    D;JLT          // If R2 is less than zero, handle negation
    @LOOP
    0;JMP          // Jump to start of multiplication loop

(labelTrueR1)
    @R1
    M=M-1          // Decrease R1 by 1 to prepare for negation
    M=!M           // Negate R1 (two's complement)
    @R3
    M=M+1          // Increment the negative count
    @secondInteger
    0;JMP          // Continue to check R2

(labelTrueR2)
    @R2
    M=M-1          // Decrease R2 by 1 to prepare for negation
    M=!M           // Negate R2 (two's complement)
    @R3
    M=M-1          // Decrement the negative count (since two negatives make a positive)
    @LOOP
    0;JMP          // Jump to start of multiplication loop

(LOOP)
    // Multiplication loop
    @R1
    D=M
    @CHECK
    D;JLE          // Check if R1 is less than or equal to zero, if so, we are done
    @R2
    D=M
    @R0
    M=M+D          // Add R2 to R0, effectively accumulating the product in R0
    @R1
    M=M-1          // Decrement R1
    @LOOP
    0;JMP          // Repeat the loop until R1 is zero

(CHECK)
    // Finalize the result based on the count of negative inputs
    @R3
    D=M
    @labelTrueR3
    D;JNE          // If R3 is not zero, we need to adjust the sign of the result
    @END
    0;JMP          // Otherwise, jump to end

(labelTrueR3)
    @R0
    M=M-1          // Adjust R0 for two's complement
    M=!M           // Negate the result to get the correct sign
    @END
    0;JMP          // Jump to end of the program

(END)
    @END
    0;JMP          // Infinite loop to stop execution
