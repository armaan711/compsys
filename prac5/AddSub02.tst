// Test file for AddSub.asm: Test Case 02
load AddSub.asm,
output-file AddSub02.out,
compare-to AddSub02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2;

set PC 0,
set RAM[0] 0,  
set RAM[1] 0,  
set RAM[2] -10,
set RAM[3] -20;
repeat 100 {
  ticktock;
}
output;
