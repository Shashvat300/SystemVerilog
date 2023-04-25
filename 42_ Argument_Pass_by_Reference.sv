//  8. Argument Pass by Reference

module Function_SV();
  
  int a,b,Z;
  
  function int sum(ref int a,b);
    a=a+b;
    return a+b;
  endfunction
  
  initial
    begin
      a=21;
      b=22;
      Z=sum(a,b);
      $display("\t A=%0d",a);
      $display("\t B=%0d",b);
      $display("\t Z=%0d",Z);
    end
endmodule


// Result.....
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 25 15:33 2023
	 A=43
	 B=22
	 Z=65
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Tue Apr 25 15:33:12 2023
Done
