//  Function Automatic..........................

module Function_Automatic();
  
  integer n;
  
  function automatic [31:0] factorial();
    
    input[31:0] fact;
    begin
      
    if(fact==0)
      factorial=1;
    else
      factorial=factorial(fact-1)*fact;
    end
  endfunction
  
  initial
    begin
      n=factorial(0);
      $display("Factorial of 0 is %0d",n);
      
      n=factorial(5);
      $display("Factorial of 5 is %0d",n);
      
      n=factorial(10);
      $display("Factorial of 10 is %0d",n);
      
      n=factorial(13);
      $display("Factorial of 13 is %0d",n);
    end
  
endmodule





// Result..........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 16 05:01 2023
Factorial of 0 is 1
Factorial of 5 is 120
Factorial of 10 is 3628800
Factorial of 13 is 1932053504
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Sun Apr 16 05:01:57 2023
Done
