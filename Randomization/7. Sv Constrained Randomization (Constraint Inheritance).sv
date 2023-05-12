// 7. Sv Constrained Randomization (Constraint Inheritance)


class Parant;
  
  rand bit [3:0] a;
  
  constraint a_name{a>=10;}; 
endclass

class Child extends Parant;
  
  constraint a_name{a<=9;};
  
endclass

module Random();
  
  initial
    begin
      Parant c1=new();
      Child c2=new();
      repeat(10)
        begin
          c2.randomize();
          $display("\t Random Value of a=%d",c2.a);
        end
      
      $display();
      $display("------Gating Value from Parant Class------");
      repeat(10)
        begin
          c1.randomize();
          $display("\t Random Value of a=%d",c1.a);
        end
    end
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------


CPU time: .293 seconds to compile + .396 seconds to elab + .457 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 13:50 2023
	 Random Value of a= 5
	 Random Value of a= 9
	 Random Value of a= 9
	 Random Value of a= 7
	 Random Value of a= 0
	 Random Value of a= 9
	 Random Value of a= 7
	 Random Value of a= 3
	 Random Value of a= 6
	 Random Value of a= 8

------Gating Value from Parant Class------
	 Random Value of a=12
	 Random Value of a=13
	 Random Value of a=14
	 Random Value of a=13
	 Random Value of a=11
	 Random Value of a=14
	 Random Value of a=10
	 Random Value of a=13
	 Random Value of a=15
	 Random Value of a=14
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Fri May 12 13:50:00 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------

