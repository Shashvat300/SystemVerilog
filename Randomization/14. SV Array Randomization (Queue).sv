// 14. SV Array Randomization (Queue)


class Parant;
  
  rand bit [3:0] a [$];
  
  constraint a_name{a.size()==5;}
endclass

module Random();
  
  initial
    begin
      Parant c1=new();
      c1.randomize();
      $display("\t a=%p",c1.a);
    end
endmodule



------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 13 16:01 2023
	 a='{'h1, 'h1, 'h1, 'h0, 'h0}
	 a=          5
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.640 seconds;       Data structure size:   0.0Mb
Sat May 13 16:01:26 2023
Done

-------------------------------------------------------------------------------------------------------------------------------------------------
