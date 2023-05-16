// 17. SV Disable Constraints (Calling Constraint_mode Method)

class myClass;
  
  rand bit [3:0] a;
  
  constraint a_name {a inside{2,10,15};}
endclass


module Random();
  
  
  initial
    begin
      
      myClass c1=new();
      
      
      $display("----Before Constraint Disable----");
      $display("Value of Constraint Mode = %0d \n",c1.a_name.constraint_mode());
      repeat(20)
        begin
          c1.randomize();
          $display("\t Random Value of a=%d",c1.a);
        end
      
      c1.a_name.constraint_mode(0);
      $display();
      $display("----After Constraint Disable-----");
      $display("Value of Constraint Mode = %0d \n",c1.a_name.constraint_mode());
      repeat(20)
        begin
          c1.randomize();
          $display("\t Random Vakue of a=%d",c1.a);
        end
    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Output....
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 16 03:08 2023
----Before Constraint Disable----
Value of Constraint Mode = 1

	 Random Value of a= 2
	 Random Value of a=10
	 Random Value of a=15
	 Random Value of a= 2
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 2
	 Random Value of a= 2
	 Random Value of a= 2
	 Random Value of a= 2
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a=15
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 2
	 Random Value of a=15
	 Random Value of a= 2

----After Constraint Disable-----
Value of Constraint Mode = 0

	 Random Vakue of a= 7
	 Random Vakue of a= 9
	 Random Vakue of a= 5
	 Random Vakue of a=12
	 Random Vakue of a=11
	 Random Vakue of a= 1
	 Random Vakue of a= 1
	 Random Vakue of a= 9
	 Random Vakue of a=14
	 Random Vakue of a= 0
	 Random Vakue of a= 2
	 Random Vakue of a= 4
	 Random Vakue of a= 5
	 Random Vakue of a= 3
	 Random Vakue of a=11
	 Random Vakue of a= 4
	 Random Vakue of a= 2
	 Random Vakue of a= 8
	 Random Vakue of a=11
	 Random Vakue of a= 2
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.640 seconds;       Data structure size:   0.0Mb
Tue May 16 03:08:15 2023

-----------------------------------------------------------------------------------------------------------------------------------------------
