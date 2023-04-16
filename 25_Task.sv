//  Task………………………….

module Tas_k();
  
  integer A,B,Y;
  
  task sum( output[7:0] y, input[7:0] a,b);    
  
    begin
      y=a+b;
    end
  endtask
  
  initial
    begin
       A=10;
       B=20;
      
      sum(Y,A,B);
      $display("Value of a+b is--> %0d",Y);
    end
endmodule




// Result.............
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 16 04:42 2023
Value of a+b is--> 30
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Sun Apr 16 04:42:29 2023
Done

