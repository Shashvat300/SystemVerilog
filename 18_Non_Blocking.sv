// Non-Blocking Assignment...................

module blocking_assignment();
  
  int a,b;
  int x,y;
  
  initial
    begin
      a=3;
      b=6;
      $display("First value of a=%0d & b=%0d \n",a,b);
      
      a<=b;
      b<=26;
      $display("Second value of a=%0d & b=%0d \n",a,b);
      
      x<=a*b;
      y<=a*b+x;
      $display("Value of X is %0d",x);
      $display("Value of Y is %0d\n",y);
      
    end
  
  final
  begin
    $display("Value of X in final block is %0d",x);
    $display("Value of Y in final block is %0d",y);
  end
endmodule


// Result..........
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 15:02 2023
First value of a=3 & b=6 

Second value of a=3 & b=6 

Value of X is 0
Value of Y is 0

Value of X in final block is 18
Value of Y in final block is 18
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Sat Apr 15 15:02:07 2023
Done
