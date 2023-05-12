// 11. SV Implication if else Constraints (Implivation Constraints)


class Parant;
  
  rand bit [3:0] a;
  string b;
  
  constraint a_name{(b=="New") -> (a>8);}
  
  function new();
    b="New";
  endfunction
  
endclass


module Random();
  
  initial
    begin
      Parant c1=new();
      repeat(10)
        begin
          c1.randomize();
          $display("\t Randome Value of a=%0d",c1.a);
        end
    end
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 15:37 2023
	 Randome Value of a=11
	 Randome Value of a=13
	 Randome Value of a=14
	 Randome Value of a=12
	 Randome Value of a=11
	 Randome Value of a=13
	 Randome Value of a=9
	 Randome Value of a=13
	 Randome Value of a=15
	 Randome Value of a=14
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Fri May 12 15:37:35 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------
