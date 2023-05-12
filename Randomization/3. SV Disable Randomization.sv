// 3. SV Disable Randomization


 class Parant;
   
   rand bit [3:0] a;
   rand reg [3:0] b; 
   
   function void Display();
     $display("\t Random Value of a=%0d & b=%0d",a,b);
   endfunction

 endclass


module Random();
  
  initial
    begin
      Parant c1=new();
      c1.a.rand_mode(0);
      repeat(10)
        begin
          c1.randomize();
          c1.Display();
        end
    end
  
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output....
CPU time: .219 seconds to compile + .294 seconds to elab + .303 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 04:11 2023
	 Random Value of a=0 & b=3
	 Random Value of a=0 & b=6
	 Random Value of a=0 & b=1
	 Random Value of a=0 & b=9
	 Random Value of a=0 & b=13
	 Random Value of a=0 & b=7
	 Random Value of a=0 & b=0
	 Random Value of a=0 & b=2
	 Random Value of a=0 & b=13
	 Random Value of a=0 & b=10
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Fri May 12 04:11:51 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------
