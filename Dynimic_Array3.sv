//3. Dynamic Array.......................

module arrr();
  
  int a[];
  bit[3:0] b[];
  
  initial
    begin
      $display("Before Initilization");  
      $display("size of array a is %d",a.size());
      $display("Size of array b is %d\n",b.size());
    end
  
  initial
    begin
      a=new[2];
      b=new[7];
      
      $display("After Initilization");
      $display("size of array a is %d",a.size());
      $display("Size of array b is %d",b.size());
    end
endmodule





//Result............
Before Initilization
size of array a is           0
Size of array b is           0

After Initilization
size of array a is           2
Size of array b is           7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.660 seconds;       Data structure size:   0.0Mb
Fri Apr 14 07:09:25 2023
Done
