// 19. SV Abstract Class  [Deriving Virtual Class]

virtual class Base_Class;
  
  int a;
  
  function new();
    a=10;
  endfunction
  
  function void Display();
    $display("\t a=%0d",a);
  endfunction
endclass

class Child_Class extends Base_Class;
  
  int b;
  
  function new();
    b=22;
  endfunction

  function void Display();
    $display("\t b=%0d",b);
    super.Display;
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

// Result...
CPU time: .219 seconds to compile + .275 seconds to elab + .284 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May  2 02:08 2023
	 b=22
	 a=10
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Tue May  2 02:08:28 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
