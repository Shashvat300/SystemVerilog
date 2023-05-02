// 18. SV Abstract Class  [Instantiating Virtual Class]


virtual class Base_Class;
  
  int a;
  
  function new();
    a=10;
  endfunction
  
  function void Display();
    $display("\t a=%0d",a);
  endfunction
endclass


module Print();
  
  initial
    begin
      Base_Class c1=new();
      c1.Display();
    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Result....
Error-[SV-ACCNBI] An abstract class cannot be instantiated
testbench.sv, 20
Print, "Print.0.c1 = new();"
 Instantiation of the object 'c1' can not be done because its type
 'Base_Class' is an abstract base class.
 Perhaps there is a derived class that should be used.

-----------------------------------------------------------------------------------------------------------------------------------------------   
   
   
