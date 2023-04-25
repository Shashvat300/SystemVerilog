// 9. Argument Pass by Name

module Function_SV();
  
  int a,b,Z;
  
  function void byName(int n, string s);
    $display("\t Valur of n=%0d & s=%s",n,s);
  endfunction
    
    initial
      begin
        byName(.s("SHASHVAT_MAURYA"),.n(002));
      end
endmodule


// Result.....
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 25 15:44 2023
	 Valur of n=2 & s=SHASHVAT_MAURYA
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Tue Apr 25 15:44:21 2023
Done
