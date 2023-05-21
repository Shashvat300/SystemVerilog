// 1. SV Shallow Copy

class myClass;
  
  int a;
  bit [31:0] b;
  
//   Conctructor......
  function new();
    a=10;
    b=11;
  endfunction
endclass


// Module ......

module ShallowCopy();
  
  myClass c1, c2;     //Handle or Instance.....
  
  initial
    begin
      c1=new();
      c2 =new c1;  //Shallow Copy......
      c2.a=20;
      c2.b=21;
      
      $display("\t Shallow Copy c1.a=%0d & c1.b=%0d",c1.a,c1.b);
      $display("\t Shallow Copy c2.a=%0d & c2.b=%0d",c2.a,c2.b);
    end
endmodule



------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 21 10:32 2023
	 Shallow Copy c1.a=20 & c1.b=21
	 Shallow Copy c2.a=20 & c2.b=21
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Sun May 21 10:32:04 2023
Done

------------------------------------------------------------------------------------------------------------------------------------------------
