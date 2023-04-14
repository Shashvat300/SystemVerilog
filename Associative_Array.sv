// 1. Associative Array.......................

module arrr();
  
  int array_a [int];
//   int array_b [string];
  
  initial
    begin
      array_a='{1:20, 6:12, 7:10};
      $display("Size of array_a is %d",array_a.size());
      
      foreach(array_a[i])
        $display("\t array_a[%0d]=%0d",i,array_a[i]);
    end
endmodule





// Result...........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 14 09:21 2023
Size of array_a is           3
	 array_a[1]=20
	 array_a[6]=12
	 array_a[7]=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.680 seconds;       Data structure size:   0.0Mb
Fri Apr 14 09:21:33 2023
Done
