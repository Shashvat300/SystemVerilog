// 1. Priority_if....................

module unqu_if();
  
  int a,b,c;
  
  initial
    begin
      a=10;
      b=20;
      c=21;
      
      priority if(a>b)
        $display("Value of A is less then B");
      else if(a>b)
        $display("Value of A is less then B");
    end
endmodule




// Result......
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 15:42 2023

Warning-[RT-NCMPRIF] No condition matches in statement
design.sv, 13
  No condition matches in 'priority if' statement. 'else' statement is missing
  for the last 'else if' block, inside unqu_if, at time 0ns.

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Sat Apr 15 15:42:02 2023
Done
