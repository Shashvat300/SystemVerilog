// 16. SV Data Hiding & Encapsulation  [Accessing Local Variable Outside the Class (Not Allowed)] 

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
      c1.a=20;
      c1.Display();
    end
  
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Result....
Error-[SV-ICVA-L] Illegal class variable access
testbench.sv, 21
 Local member 'a' of class 'bass' is not visible to scope 'Bass'.
 Please make sure that the above member is accessed only from its own class
 methods as it is declared as local.
 Please refer to the SystemVerilog LRM (1800-2012) Section 8.18 Data hiding
 and encapsulation.

1 error
CPU time: .172 seconds to compile
Exit code expected: 0, received: 1
Done
   
-----------------------------------------------------------------------------------------------------------------------------------------------
   
