//4. Dynamic Array.......................

module arrr();
  
  string fruits[];
  
  initial
    begin
      fruits = new[3];
      fruits='{"Apple","Mango","128"};
      $display("Size of array is %d",fruits.size());
      
      fruits.delete();
      $display("Empty the dynamic array by deliting all iteams is %d",fruits.size());
    end
  
endmodule




// Result........
xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
Size of array is           3
Empty the dynamic array by deliting all iteams is           0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	20.09-s003: Exiting on Apr 14, 2023 at 07:33:54 EDT  (total: 00:00:01)
Done
