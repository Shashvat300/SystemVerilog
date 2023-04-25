//4. Discarding Function Return Value.................................

module Function_SV();
  
  int n;
  
  function int div();
    input int a,b;
    return a/b;
  endfunction
  
  initial
    begin
      $display("Function calling");
      void'(div(100,10));
    end
endmodule


// Result.......
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 25 14:59 2023
Calling function with void
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Tue Apr 25 14:59:31 2023
Done
