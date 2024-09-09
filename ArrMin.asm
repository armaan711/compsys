// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Initialize R0 with the value of the first element of the array
@R1          // Point to the first element's address
A=M          // Set A-register to the address stored in R1
D=M          // Load the value of the first array element into D
@R0          // Point to R0
M=D          // Set the first element as the initial minimum

// Setup index counter (i) and length of the array (n)
@R2          // R2 holds the length of the array
D=M          // Load length into D
@length      // Store length in a variable 'length'
M=D
@i
M=1          // Start index i from 1 since we already checked the first element

// Start the loop to check each element
(LOOP)
    @i
    D=M
    @length
    D=D-M        // Compare i with n
    @ENDLOOP
    D;JEQ        // If i == n, we've checked all elements, jump to ENDLOOP

    // Load the current array element and compare with current minimum
    @R1
    D=M          // Address of the first element
    @i
    A=D+A        // Address of the current element
    D=M          // Load the current element's value
    @R0
    D=D-M        // Compare with the minimum stored in R0
    @SKIP
    D;JGE        // If current element >= min, skip updating R0

    // Update R0 if a new minimum is found
    @R0
    M=D          // Update R0 with the new minimum

(SKIP)
    @i
    M=M+1        // Increment i
    @LOOP        // Jump back to the start of the loop
    0;JMP

(ENDLOOP)
    @ENDLOOP
    0;JMP        // Infinite loop to halt the program
