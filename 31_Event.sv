// Event........................

module Event();
  
  reg clk;
  
  initial
    clk=0;
  
  always
    #2 clk=~clk;
  
  always @(negedge clk)
    begin
      $display("Clock[%0d] Do SomeThing Time=%0t",clk,$time);
    end
  
  initial
    #21 $finish;
  
endmodule



Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 17 13:01 2023
Clock[0] Do SomeThing Time=0
Clock[0] Do SomeThing Time=4
Clock[0] Do SomeThing Time=8
Clock[0] Do SomeThing Time=12
Clock[0] Do SomeThing Time=16
Clock[0] Do SomeThing Time=20
$finish called from file "testbench.sv", line 19.
$finish at simulation time                   21
           V C S   S i m u l a t i o n   R e p o r t 
Time: 21 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Mon Apr 17 13:01:17 2023
Done
