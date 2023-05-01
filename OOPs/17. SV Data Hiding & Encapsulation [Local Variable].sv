// 17. SV Data Hiding & Encapsulation  [Accessing Local Variable Within the Class (Allowed)] 

class bass;
  
  local int a;

  function new();
    a=100;
  endfunction
  
  function void Display();
    $display("\t a=%0d",a);
  endfunction
endclass
  

module Bass();
  
  initial
    begin
      bass c1=new();
      c1.Display();
    end
  
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Result....
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May  1 14:53 2023
	 a=100
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Mon May  1 14:53:08 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
