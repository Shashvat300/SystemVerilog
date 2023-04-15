// Dynamic Array................
// Initializing Value on Paticular Bit


module arr();
  
  int array[];
  
  initial
    begin
      array=new[6];
      
      array[3]=10;
      foreach(array[i])
        $display("\t array[%0d]=%0d",i,array[i]);
    end
endmodule



// Result............
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 05:26 2023
	 array[0]=0
	 array[1]=0
	 array[2]=0
	 array[3]=10
	 array[4]=0
	 array[5]=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sat Apr 15 05:26:02 2023
Done
