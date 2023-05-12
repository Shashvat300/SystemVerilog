// 8. SV Constraint Inside (Constraint Inside Examplae)

class Parant;
  rand bit [3:0] a;
  rand bit [3:0] Start;
  rand bit [3:0] End;
  
  constraint a_name {a inside {[Start:End]};};
endclass

module Random();
  
  initial
    begin
      Parant c1=new();
      repeat(4)
        begin
          c1.randomize();
          $display("\t Random Value of Start=%d & End=%0d",c1.Start,c1.End);
          $display("\t Random Value of a=%0d \n",c1.a);
        end
    end 
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
CPU time: .230 seconds to compile + .366 seconds to elab + .321 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 14:20 2023
	 Random Value of Start= 5 & End=12
	 Random Value of a=6

	 Random Value of Start=11 & End=15
	 Random Value of a=14

	 Random Value of Start= 9 & End=14
	 Random Value of a=10

	 Random Value of Start= 1 & End=15
	 Random Value of a=13

          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Fri May 12 14:20:40 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------

