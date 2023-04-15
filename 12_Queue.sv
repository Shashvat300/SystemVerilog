// 1. Queue...............

module arrr();
  
  string a [$];
  
  initial
    begin
      a='{"Apple", "Banana", "Green Apple", "Guava", "Mango"};
      
      foreach(a[i])
        begin
          $display("\t a[%0d]=%s ",i,a[i]);
        end
      $display("a=%p",a);
    end
endmodule




// Result...............
	 a[0]=Apple 
	 a[1]=Banana 
	 a[2]=Green Apple 
	 a[3]=Guava 
	 a[4]=Mango 
a='{"Apple", "Banana", "Green Apple", "Guava", "Mango"} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Sat Apr 15 03:53:56 2023
Done
