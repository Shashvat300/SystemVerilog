// 1. SV Semaphore 

module Semaphore_x;
  
  semaphore s1;
  
  initial
    begin
      s1=new(1); //Creating s1 with 1 key
      
      fork
        Display();
        Display();
      join
    end
  
//       Display Method.......
  task automatic Display();
      s1.get();
      $display($time,"\t I'm Checking Semaphore Working ");
      #25;
      s1.put();
   endtask
endmodule


-------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 22 01:59 2023
                  0	 I'm Checking Semaphore Working
                 25	 I'm Checking Semaphore Working
          V C S   S i m u l a t i o n   R e p o r t
Time: 50 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Mon May 22 01:59:06 2023

-------------------------------------------------------------------------------------------------------------------------------------------------
