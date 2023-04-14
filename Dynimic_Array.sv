// 1. Dynamic Array............................................

module arrr();
  
  int array[];
  
  initial
    begin
      array = new[10];
      
      array[4]=100;
      
      foreach(array[i])
        begin
          $display("Value of array[%0d]=[%0d]",i,array[i]);
        end
    end
endmodule





//Result....
xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
Value of array[0]=[0]
Value of array[1]=[0]
Value of array[2]=[0]
Value of array[3]=[0]
Value of array[4]=[100]
Value of array[5]=[0]
Value of array[6]=[0]
Value of array[7]=[0]
Value of array[8]=[0]
Value of array[9]=[0]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	20.09-s003: Exiting on Apr 14, 2023 at 06:34:41 EDT  (total: 00:00:01)
Done
