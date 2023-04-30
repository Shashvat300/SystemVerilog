
// 7. Class Handle


class Check;
  
  int i;
  
endclass

module Class();
  
  Check C1,C2;
  
  initial
    begin
      C1=new();
      C1.i=32;
      $display("\t Value of Class C1 = %0d",C1.i);
      
      C2=C1;
      $display("\t Value of Class C2 = %0d",C2.i);
    end
endmodule




// Output.....
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 30 14:05 2023
	 Value of Class C1 = 32
	 Value of Class C2 = 32
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Sun Apr 30 14:05:41 2023
Done

