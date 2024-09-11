// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// ArrSort.asm

@R1
D=M
@R3
M=D          // Set R3 to the starting address of the array

// Preparing for sorting, calculate the ending position
@R2
D=M
D=D-1
@NEAREND
D;JLE        // If the array has 1 or no elements, skip to end
@R2
D=M
@R3
M=M+D       // Calculate the last valid index of the array
M=M-1

@R1
D=M
@R4
M=D         // Initialize R4 with the address of the first element

// Main sorting loop starts here
(LOOP)
    @R4
    D=M
    @R3
    D=M-D      // Check if R4 reached the end of the array
    @NEXT
    D;JEQ      // If R4 is at R3, processing is complete

    // Compare the current element with the next element
    @R4
    A=M
    D=M        // Load the current element
    A=A+1
    D=D-M      // Compare with the next element
    D=D+M      // Check for overflow scenario
    @R4
    A=M
    D=D-M
    @Overflow
    D;JNE      // If overflow occurs, handle accordingly
    @R4
    A=M
    D=M
    A=A+1
    D=D-M      // Compare the current element again for swap condition
    @LARGER
    D;JGE      // If current element is larger, initiate swap

    // Advance to the next element and repeat the loop
    @R4
    M=M+1
    @LOOP
    0;JMP

// Overflow handling
(Overflow)
    @R4
    A=M
    D=M
    @LARGER
    D;JGT      // If truly larger, confirm the swap

// Handle swapping of elements
(LARGER)
    @R4
    A=M
    D=M
    @R5
    M=D        // Store the larger element temporarily
    @R4
    A=M+1
    D=M        // Load the next element
    @R4
    A=M
    M=D        // Replace current element with next
    @R5
    D=M
    @R4
    A=M+1
    M=D        // Place the original element in the next position
    @R4
    M=M+1      // Move to the next position
    @LOOP
    0;JMP

// Preparation for the next iteration of sorting
(NEXT)
    @R3
    D=M
    @R1
    D=D-M
    D=D-1
    @NEAREND
    D;JLE      // Check if only one unsorted element remains
    @R3
    M=M-1      // Reduce the range for the next pass
    @R1
    D=M
    @R4
    M=D        // Reset R4 to the start of the array
    @LOOP
    0;JMP

// Sorting complete, return true (-1)
(NEAREND)
    @R0
    M=-1
    @END
    0;JMP

(END)
    @END
    0;JMP      // End program execution
