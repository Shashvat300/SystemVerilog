// 2. SV Semaphore

module Semaphore_x();
  
  semaphore s1;
  
  initial
    begin
      s1=new(10);
      
      fork
        Display();
        Display();
        Display();
      join
    end
  
  task automatic Display();
    s1.get(3);
    $display($time,"\t I'm Checking Semaphore Working");
    #22;
    s1.put(3);
  endtask
endmodule


-------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 22 02:22 2023
                  0	 I'm Checking Semaphore Working
                  0	 I'm Checking Semaphore Working
                  0	 I'm Checking Semaphore Working
          V C S   S i m u l a t i o n   R e p o r t
Time: 22 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Mon May 22 02:22:44 2023
Done

-------------------------------------------------------------------------------------------------------------------------------------------------
