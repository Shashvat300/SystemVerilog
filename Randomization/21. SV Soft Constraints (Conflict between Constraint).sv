// 21. SV Soft Constraints (Conflict between Constraint)

class myClass;
  
  rand bit [3:0] a;
  
  constraint a_name  {soft a<10;}
endclass

module myRandom;
  
  initial
    begin
      myClass c1=new();
      repeat(10)
        begin
          c1.randomize() with{a>10;};
          $display("\t Random Value of a=%0d",c1.a);
        end
    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 16 14:42 2023
	 Random Value of a=14
	 Random Value of a=14
	 Random Value of a=15
	 Random Value of a=13
	 Random Value of a=12
	 Random Value of a=14
	 Random Value of a=12
	 Random Value of a=15
	 Random Value of a=11
	 Random Value of a=13
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Tue May 16 14:42:33 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
