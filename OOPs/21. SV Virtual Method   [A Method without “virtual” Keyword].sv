// 21. SV Virtual Method   [A Method without “virtual” Keyword]

class Base_Class;
  
  int a;
  
  function new();
    a=10;
  endfunction
  
  function void Display();
    $display("You Are Crrrently in Base Class:");
    $display("\t a=%0d",a);
      endfunction
endclass

class Child_Class extends Base_Class;
  
  int b;
  
  function new();
    b=22;
  endfunction

  function void Display();
    $display("You are Currently in Child Class");
    $display("\t b=%0d",b);
//     super.Display;
  endfunction
endclass
  
module Print();
  
  initial
    begin
      Child_Class c1=new();
      Base_Class c2;
      c2=c1;
      c2.Display();
    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Result....
Compiler version S-2021.09; Runtime version S-2021.09;  May  2 02:43 2023
You Are Crrrently in Base Class:
	 a=10
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.620 seconds;       Data structure size:   0.0Mb
Tue May  2 02:43:03 2023

-----------------------------------------------------------------------------------------------------------------------------------------------
