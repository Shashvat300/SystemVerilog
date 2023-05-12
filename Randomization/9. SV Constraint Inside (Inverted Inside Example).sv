// 9. SV Constraint Inside (Inverted Inside Example)

class Parant;
  rand bit [3:0] a;
  rand bit [3:0] Start;
  rand bit [3:0] End;
  
  constraint a_name {!(a inside {[Start:End]});}
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
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 14:29 2023
	 Random Value of Start=14 & End=9
	 Random Value of a=0

	 Random Value of Start=14 & End=1
	 Random Value of a=7

	 Random Value of Start= 9 & End=4
	 Random Value of a=13

	 Random Value of Start=10 & End=3
	 Random Value of a=9

          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Fri May 12 14:29:32 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------
