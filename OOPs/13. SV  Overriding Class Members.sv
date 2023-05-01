// 13. SV  Overriding Class Members


class Parant_Class;
  
  int a;
  
  function void Display();
    $display("Currently You are in Parant Class");
  endfunction
  
endclass

class Child_Class extends Parant_Class;
  
  bit [3:0] b;
  
  function void Display();
    $display("\t Currently you are in Child Class");
    $display("\t a=%0d",a);
    $display("\t b=%b",b);
  endfunction
  
endclass


module Print();
  
  
  initial
    begin
      Child_Class c1=new();
      c1.a=100;
      c1.b=0;
      c1.Display();
    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Result....
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May  1 13:16 2023
	 Currently you are in Child Class
	 a=100
	 b=0000
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Mon May  1 13:16:18 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
