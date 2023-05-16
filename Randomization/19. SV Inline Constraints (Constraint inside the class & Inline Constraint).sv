// 19. SV Inline Constraints (Constraint inside the class & Inline Constraint)


class myClass;

  rand int a;
  
  constraint a_name{  a>0;
                      a<10; }

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
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 16 11:05 2023
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
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Tue May 16 11:05:33 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
