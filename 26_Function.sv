//  Function............................

module Function();
  
  integer n;
  integer A,B;
  
  initial
    begin
      A=10;
      B=20;
      n=sum(A,B);
      
      $display("Value of A+B is %d",n);
    end
endmodule

 function[7:0] sum();
    input[7:0] a,b;
    begin
      sum=a+b;
    end
  endfunction




// Result............
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 16 04:15 2023
Value of A+B is          30
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Sun Apr 16 04:15:34 2023
Done
