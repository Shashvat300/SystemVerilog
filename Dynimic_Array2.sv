//2. Dynamic Array......................................

module arrr();
  
  int array[];
  
  initial
    begin
      array = new[10];
      
      array='{10,11,12,13,14,115,116,17,18,19};
      
      foreach(array[i])
        begin
          $display("Value of array[%0d]=[%0d]",i,array[i]);
        end
    end
endmodule



//Result....
xmsim: *W,DSEM2009: This SystemVerilog design is simulated as per IEEE 1800-2009 SystemVerilog simulation semantics. Use -disable_sem2009 option for turning off SV 2009 simulation semantics.
xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
Value of array[0]=[10]
Value of array[1]=[11]
Value of array[2]=[12]
Value of array[3]=[13]
Value of array[4]=[14]
Value of array[5]=[115]
Value of array[6]=[116]
Value of array[7]=[17]
Value of array[8]=[18]
Value of array[9]=[19]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	20.09-s003: Exiting on Apr 14, 2023 at 06:42:03 EDT  (total: 00:00:02)
Done
