// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
    //Initialise values
    @R1
    D=M
    @R4
    M=D
    @R1
    
    A=M
    D=M
    @R0
    M=D
    // If there are only 1 or none value
    @R2
    D=M
    D=D-1
    @END
    D;JLE
(LOOP)
    // Check if the loop has gone through the array
    @R4
    M=M+1
    D=M
    @R1
    D=D-M
    @R2
    D=D-M
    @END
    D;JGE

    // Check if the new number is less than the current number saved in R0
    @R4
    A=M
    D=M
    @R0
    D=D-M
    // Check for overflow
    @R0
    D=D+M
    @R4
    A=M
    D=D-M
    @Overflow
    D;JNE
    // Recheck
    @R4
    A=M
    D=M
    @R0
    D=D-M
    @NEW 
    D;JLT

    // Jump back to the loop
    @LOOP
    0;JMP
(Overflow)
    @R0
    D=M
    @NEW
    D;JLT
(NEW)   // If the new number is less than the current number in R0 condition
    @R4
    A=M
    D=M
    @R0
    M=D
    @LOOP
    0;JMP
(END)
    @END
    0;JMP

