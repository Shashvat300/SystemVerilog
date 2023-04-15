// 1. Dynamic Array (NEW)..........................

module arrr();
  
  int a [];
  
  initial
    begin
      a=new[4];
      $display();
      $display("Size of the array is %0d\n",a.size());
      
      a='{23,11,23,50};
      foreach(a[i])
       begin
         $display("\t Values of array is a[%0d]=%0d",i,a[i]);
       end
      
       a[2]=1;
      $display();
      $display("Value of Array a[2] is %d",a[2]);
      

      a.delete();
      $display("sized of array after delitiing the array is %d\n",a.size());
      
     
    end
endmodule












// Result.........
Size of the array is 4

	 Values of array is a[0]=23
	 Values of array is a[1]=11
	 Values of array is a[2]=23
	 Values of array is a[3]=50
 
Value of Array a[2] is           1
sized of array after delitiing the array is           0

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Sat Apr 15 01:46:30 2023
Done
