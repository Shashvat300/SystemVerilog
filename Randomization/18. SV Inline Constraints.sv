// 18. SV Inline Constraints

class myClass;

rand int a;

endclass

module myModule();
  
  initial
    begin
      myClass c1=new();
      repeat(10)
        begin
          c1.randomize() with{a==9;};
          $display("\t Random Value of a=%0D",c1.a);
        end
    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 16 10:57 2023
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
	 Random Value of a=9
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Tue May 16 10:57:43 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
