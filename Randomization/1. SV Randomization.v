1. SV Randomization

class Parant;
  
  rand reg [3:0] a;
  
  function void Display();
    $display("\t Rndom Value of a is %d",a);
  endfunction
  
endclass

module Random();
  
  initial
    begin
      Parant c1=new();
      for(int i=0; i<10; i++)
        begin
          c1.randomize();
          c1.Display();
        end
    end
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output......
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 02:00 2023
	 Rndom Value of a is  3
	 Rndom Value of a is  6
	 Rndom Value of a is  1
	 Rndom Value of a is  9
	 Rndom Value of a is 13
	 Rndom Value of a is  7
	 Rndom Value of a is  0
	 Rndom Value of a is  2
	 Rndom Value of a is 13
	 Rndom Value of a is 10
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Fri May 12 02:00:52 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------

