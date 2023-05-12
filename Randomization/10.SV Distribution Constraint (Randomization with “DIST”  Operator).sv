// 10.SV Distribution Constraint (Randomization with “DIST”  Operator)

class Parant;
  
  rand bit [3:0] a;
  
  constraint a_name{a dist{3:=2, 4:=3, 10:=12};}
  
endclass

module random();
  
  initial
    begin
      Parant c1=new();
      repeat(10)
        begin
          c1.randomize();
          $display("\t Random Value of a=%d",c1.a);
        end
    end
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
CPU time: .238 seconds to compile + .298 seconds to elab + .296 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 15:10 2023
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 4
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 4
	 Random Value of a=10
	 Random Value of a=10
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Fri May 12 15:10:49 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------
