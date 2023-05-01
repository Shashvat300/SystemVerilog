// 12. SV   Inheritance

class Parant_Class;
  
  int a;
  bit [3:0] b;
  
endclass

class Child_Class extends Parant_Class;
  
  string c;
  
  function new();
    a=23;
    b=4'b1010;
    c="Shashvat";
  endfunction
  
  function void Display();
    $display("\t a=%0d",a);
    $display("\t b=%b",b);
    $display("\t c=%s",c);
  endfunction
  
endclass



module Print();
  
  initial
    begin
      Child_Class c1=new();
      c1.Display();
    end  
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Result....
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May  1 10:03 2023
	 a=23
	 b=1010
	 c=Shashvat
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Mon May  1 10:03:07 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
