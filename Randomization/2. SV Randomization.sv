// 2. SV Randomization

class Parant;
  
  rand reg [3:0] a;
  randc bit [3:0] b;
  
  function void Display();
    $display("\t Rndom Value of a=%d & b=%d",a,b);
  endfunction
  
endclass

module Random();
  
  initial
    begin
      Parant c1=new();
      for(int i=0; i<10; i++)
        begin
          c1.randomize();
          c1.Display();
        end
    end
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output....
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 02:19 2023
	 Rndom Value of a= 3 & b= 5
	 Rndom Value of a= 6 & b= 1
	 Rndom Value of a= 1 & b= 2
	 Rndom Value of a= 9 & b= 3
	 Rndom Value of a=13 & b= 4
	 Rndom Value of a= 7 & b= 0
	 Rndom Value of a= 0 & b= 7
	 Rndom Value of a= 2 & b= 9
	 Rndom Value of a=13 & b= 6
	 Rndom Value of a=10 & b=14
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Fri May 12 02:19:21 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------

