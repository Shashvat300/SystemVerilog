//4. Dynamic Array(Resizing Dynamic Array)........................

module arrrr();
  
  int a[];
  bit[7:0] b[];
  
  initial
    begin
      a=new[2];
      b=new[4];
      
      a={2,5};
      b={2,4,5,6};
      foreach(a[i])
        $display("\t a[%0d]=[%0d]",i,a[i]);
      
      $display("Inceasing the size of array");
      a=new[4];
      $display("Size after increasing the array is %0d",a.size());
      foreach(a[i])
        $display("\t a[%0d]=%0d",i,a[i]);
      
      $display();
      $display("Increasing the size by retaining the old values in a");
      a='{2,5,1,8};
      a=new[4](a);
//       $display("Size after increasing the array is %0d",a.size());
      foreach(a[i])
        $display("\t a[%0d]=%0d",i,a[i]);
      
      $display();
      $display("Increasing the size by retaining the old values in b");
      b=new[7](b);
      foreach(b[i])
        $display("\t b[%0d]=%0d",i,b[i]);
    end
endmodule




// Result...............
xmsim: *W,DSEM2009: This SystemVerilog design is simulated as per IEEE 1800-2009 SystemVerilog simulation semantics. Use -disable_sem2009 option for turning off SV 2009 simulation semantics.
xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
	 a[0]=[2]
	 a[1]=[5]
Inceasing the size of array
Size after increasing the array is 4
	 a[0]=0
	 a[1]=0
	 a[2]=0
	 a[3]=0
 
Increasing the size by retaining the old values in a
	 a[0]=2
	 a[1]=5
	 a[2]=1
	 a[3]=8
 
Increasing the size by retaining the old values in b
	 b[0]=2
	 b[1]=4
	 b[2]=5
	 b[3]=6
	 b[4]=0
	 b[5]=0
	 b[6]=0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	20.09-s003: Exiting on Apr 14, 2023 at 08:24:46 EDT  (total: 00:00:01)
Done
