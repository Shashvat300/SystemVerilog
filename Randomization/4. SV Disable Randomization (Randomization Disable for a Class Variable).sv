// 4. SV Disable Randomization (Randomization Disable for a Class Variable)

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
      c1.rand_mode(0);
      repeat(10)
        begin
          c1.randomize();
          c1.Display();
        end
    end
  
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
CPU time: .206 seconds to compile + .269 seconds to elab + .264 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 04:22 2023
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
	 Random Value of a=0 & b=x
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Fri May 12 04:22:33 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------

