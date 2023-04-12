// Array........................

module arr();
  
  int array1[6] = {3,4,5,7,1,6};
  
  initial
    begin
      $display("Value of something is : %0d",array1[1]);
    end
  
  
  
endmodule



xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
Value of something is : 4
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	20.09-s003: Exiting on Apr 12, 2023 at 13:43:31 EDT  (total: 00:00:01)
Done
