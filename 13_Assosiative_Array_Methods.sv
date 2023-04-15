// Assosiative Array Methods...............

module m();
  
  int a [int];
  int b;
  
  initial
    begin
      a[5]=20;
      a[17]=2;
      a[1]=10;
      a[2]=21;
      a[4]=22;
      a[6]=23;
      
      $display("Size of array a is %0d \n",a.size());
      $display("Number of entries is %0d \n",a.num());
      
      if(a.exists(4))
        $display("Element is exists at index = 7");
      else
        $display("Invalid Index");
      
      a.last(b);
      $display("Last index of array a is %0d\n ",b);
      
      a.first(b);
      $display("First index of array is %0d\n",b);
      
      b=2;
      a.next(b);
      $display("Next index of 2 is %0d\n",b);
      
      b=2;
      a.prev(b);
      $display("Prev index of 2 is %0d\n",b);
      
      a.delete(17);
      $display("Arrar a after deleting index 17");
      foreach(a[i])
        $display("\t a=[%0d]=%0d",i,a[i]);
        
    end
endmodule





// Result.........
Size of array a is 6 

Number of entries is 6 

Element is exists at index = 7
Last index of array a is 17
 
First index of array is 1

Next index of 2 is 4

Prev index of 2 is 1

Arrar a after deleting index 17
	 a=[1]=10
	 a=[2]=21
	 a=[4]=22
	 a=[5]=20
	 a=[6]=23
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Sat Apr 15 05:10:00 2023
Done
