// Task Automatic..............................

module Tas_k();
  
  integer A,B,Y;
  
  task automatic sum( output[7:0] y, input[7:0] a,b);    
  
    begin
      y=a+b;
    end
  endtask
  
  initial
    begin
      
      sum(Y,20,10);
      $display("1st Value of a+b is--> %0d",Y);
      
      sum(Y,20,11);
      $display("2nd Value of a+b is--> %0d",Y);
      
      sum(Y,20,15);
      $display("3rd Value of a+b is--> %0d",Y);
      
      sum(Y,20,19);
      $display("4th Value of a+b is--> %0d",Y);
      
      
    end
endmodule




// Result........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 16 05:26 2023
1st Value of a+b is--> 30
2nd Value of a+b is--> 31
3rd Value of a+b is--> 35
4th Value of a+b is--> 39
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Sun Apr 16 05:26:17 2023
Done
