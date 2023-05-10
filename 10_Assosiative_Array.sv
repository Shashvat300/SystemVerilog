// 2. Associative Array.......................

module arrr();
  
  int array_a [int];
  int array_b [string];
  
  initial
    begin
      array_a='{1:20, 6:12, 7:10};
      $display("Size of array_a is %d",array_a.size());      
      foreach(array_a[i])
        $display("\t array_a[%0d]=%0d\n",i,array_a[i]);
      
      array_b='{"Max":20, "Maxo":21};
      $display("Size of array_b is %d",array_b.size());
      foreach(array_b[i])
        $display("\t array_b[%s]=%0d",i,array_b[i]);
    end  
endmodule



// Result.........>
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 14 09:31 2023
Size of array_a is           3
	 array_a[1]=20

	 array_a[6]=12

	 array_a[7]=10

Size of array_b is           2
	 array_b[Max]=20
	 array_b[Maxo]=21
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Fri Apr 14 09:31:48 2023
Done
