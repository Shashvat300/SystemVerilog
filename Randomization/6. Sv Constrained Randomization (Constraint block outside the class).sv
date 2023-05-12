// 6. Sv Constrained Randomization (Constraint block outside the class)

class Parant;
  
  rand reg [3:0] a;
  rand bit [3:0] b;
  
  constraint a_name;
    
endclass

constraint Parant::a_name{a>7; b<8;};


module Random();
  
  initial
    begin
      Parant c1=new();
      repeat(10)
        begin
          c1.randomize();
          $display("\t Random Value of a=%0d & b=%d",c1.a,c1.b);
        end
    end
  
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output....
CPU time: .296 seconds to compile + .378 seconds to elab + .347 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 13:29 2023
	 Random Value of a=11 & b= 2
	 Random Value of a=12 & b= 7
	 Random Value of a=14 & b= 1
	 Random Value of a=12 & b= 7
	 Random Value of a=10 & b= 5
	 Random Value of a=13 & b= 6
	 Random Value of  a=8 & b= 6
	 Random Value of a=13 & b= 4
	 Random Value of a=15 & b= 2
	 Random Value of a=13 & b= 1
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Fri May 12 13:29:39 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------
