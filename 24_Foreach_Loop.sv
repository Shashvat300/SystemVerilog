//Foreach Loop..............

module fo_each_loop();
  
  int a[];
  int i;
  
  initial
    begin
      a=new[4];
      
      foreach(a[i]) 
        a[i]=i;
      foreach(a[i])
        $display("\t a[%0d]=%0d",i,a[i]);
        
    end
endmodule




//Result........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 16:25 2023
	 a[0]=0
	 a[1]=1
	 a[2]=2
	 a[3]=3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Sat Apr 15 16:25:12 2023
Done
