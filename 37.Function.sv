//3. Function.................................

module Function_SV();
  
  int n;
  
  function int mul(input int a,b);
    return a*b;
  endfunction
  
  initial
    begin
      n=mul(10,12);
      $display("\t Value of n %0d",n);
    end
endmodule




// Result.........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 25 14:36 2023
	 Value of n 120
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Tue Apr 25 14:36:07 2023
Done
