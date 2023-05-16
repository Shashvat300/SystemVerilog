// 15. SV Distribution Constraint (Difference Between := & :/ Dist Operator)


class Parent;
  
  rand bit [3:0] a;
  rand bit [3:0] b;
  
  constraint a_name{a dist {3:=5, [4:9]:=7, 10:=17};}
  constraint b_name{b dist {3:/5, [4:9]:/7, 10:/17};}
endclass

module Random();
  
  initial
    begin
      Parent c1=new();
      repeat(20)
        begin
          c1.randomize();
          $display("\t Random Value of a=%d",c1.a);
        end
      
      
      $display();
      $display("-------------Use :/ Operator------------------");
      repeat(20)
        begin
          c1.randomize();
          $display("\t Random Value of a=%d",c1.b);
        end

    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 16 01:49 2023
	 Random Value of a= 4
	 Random Value of a= 5
	 Random Value of a=10
	 Random Value of a= 8
	 Random Value of a= 7
	 Random Value of a= 4
	 Random Value of a= 8
	 Random Value of a= 5
	 Random Value of a= 9
	 Random Value of a= 8
	 Random Value of a= 4
	 Random Value of a= 6
	 Random Value of a=10
	 Random Value of a= 3
	 Random Value of a=10
	 Random Value of a= 9
	 Random Value of a=10
	 Random Value of a= 5
	 Random Value of a= 8
	 Random Value of a= 6

-------------Use :/ Operator------------------
	 Random Value of a= 9
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 3
	 Random Value of a= 9
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 4
	 Random Value of a= 5
	 Random Value of a= 4
	 Random Value of a= 9
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 4
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a=10
	 Random Value of a= 5
	 Random Value of a=10
	 Random Value of a=10
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Tue May 16 01:49:33 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
