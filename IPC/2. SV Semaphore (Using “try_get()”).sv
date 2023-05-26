// 2. SV Semaphore (Using “try_get()”)

module Semaphore_ex();
  
  semaphore sh;
  
  initial
    begin
      sh=new(4);
      
      fork
        Printt(5);
        Printt(10);
        Printt(51);
      join
    end
  
  
  task automatic Printt(int key);
        sh.try_get(key);
    $display("\t Current semulation time,  got %0d Key",key,$time);
        #32;
        sh.put(key);
      endtask
endmodule



-------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 26 02:16 2023
	 Current semulation time,  got 5 Key                   0
	 Current semulation time,  got 10 Key                   0
	 Current semulation time,  got 51 Key                   0
          V C S   S i m u l a t i o n   R e p o r t
Time: 32 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Fri May 26 02:16:20 2023
Done

-------------------------------------------------------------------------------------------------------------------------------------------------
