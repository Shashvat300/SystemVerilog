// Task.................................

module Task_SV();
  
  int x;
  
  task sum(input int a,b, output int z);
    z= a+b;
  endtask
  
  initial
    begin
      sum(10,20,x);
      
      $display("\tValue of A + B is %0d",x);
    end
endmodule



// Result......................
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 25 13:58 2023
	Value of A + B is 30
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Tue Apr 25 13:58:29 2023
Done
