// 3. SV Polymorphism

class Parant;
  
  int a;
  bit b;
  
  function new();
    a=32;
    b=1;
  endfunction
  
  virtual function void Display();
    $display("\t Inside Parant Class");
  endfunction
endclass



class Child_1 extends Parant;
  
  function void Display();
    $display("\t Inside Child_1 Class");
    $display("\t Value of a=%0d & b=%0d \n",a,b);
  endfunction
endclass


class Child_2 extends Parant;
  
  function void Display();
    $display("\t Inside Child_2 Class \n");
  endfunction
endclass


class Child_3 extends Parant;
  
  function void Display();
    $display("\t Inside Child_3 Class \n");
  endfunction
endclass



module Polymorphism();
  
   initial
    begin
      Parant p;
      
      Child_1 c1=new();
      Child_2 c2=new();
      Child_3 c3=new();
      
      p=c1;
      p.Display();
      
      p=c2;
      p.Display();
      
      p=c3;
      p.Display();
    end
endmodule



-------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 21 13:44 2023
	 Inside Child_1 Class
	 Value of a=32 & b=1

	 Inside Child_2 Class

	 Inside Child_3 Class

          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sun May 21 13:44:12 2023
Done
------------------------------------------------------------------------------------------------------------------------------------------------
