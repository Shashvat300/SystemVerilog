// 1. Unique_if....................

module unqu_if();
  
  int a,b,c;
  
  initial
    begin
      a=10;
      b=20;
      c=21;
      
      unique if(a<b)
        $display("Value of A is less then B");
      else if(a<b)
        $display("Value of A is less then B");
      else
        $display("Do Nothing");
    end
endmodule



// Result............
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 15:29 2023
Value of A is less then B

Warning-[RT-MTOCMUIF] More than one condition match in statement
design.sv, 13
  More than one condition matches are found in 'unique if' statement inside 
  unqu_if, at time 0ns.
  
  Line number 13 and 15 are overlapping.

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Sat Apr 15 15:29:04 2023
Done
