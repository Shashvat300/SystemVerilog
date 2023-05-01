// 10. SV Parameterized Class  [Pass a data type to a class]


class Pss #(parameter type Data_Type = int);
  
  Data_Type a;
  Data_Type b;
  real c;
  
  function new();
    a=33;
    b=-33;
    c=22.33;
  endfunction
  
  
  function DISPLAY();
    $display("\t a=%0d",a);
    $display("\t b=%0d",b);
    $display("\t c=%f \n",c);
    
    $display("Checking Data Types of the....");
    $display("Data Types:: of a=%s b=%s c=%s",$typename(a),$typename(b),$typename(c));
  endfunction
endclass

module Param();
  
  initial
    begin
      Pss C1=new();
      C1.DISPLAY();
    end
endmodule
  


// Output........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May  1 05:04 2023
	 a=33
	 b=-33
	 c=22.330000

Checking Data Types of the....
Data Types:: of a=int b=int c=real
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Mon May  1 05:04:49 2023
Done
