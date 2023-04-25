//4. Function Call as an Expression.................................

module Function_SV();
  
  int n;
  
  function int div();
    input int a,b;
    return a/b;
  endfunction
  
  initial
    begin
      n=11+div(100,10);
      $display("\t n=%0d",n);
    end
endmodule




// Result.........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 25 15:06 2023
	 n=21
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Tue Apr 25 15:06:01 2023
Done
