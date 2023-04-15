module non_blocking();
  
  int a,b;
  
  initial
    begin
      a=10;
      b<=a;
      a=11;
      $display("Value of a=%0d",a);
      $display("Value of b=%0d",b);
    end
  
  final
  begin
    $display("Value of a in final block is a=%0d",a);
    $display("Value of b in final block is b=%0d",b);
  end
  endmodule





Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 14:55 2023
Value of a=11
Value of b=0
Value of a in final block is a=11
Value of b in final block is b=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Sat Apr 15 14:55:38 2023
Done
