// 9. SV Class Static Variables [TRYING TO ACCESS A NON-STATIC VARIABLE]


class STATIC;
  
  string s;
  static int a;
  reg [3:0] r;
  
//   constructor__________
  function new();
    s="Shashvat";
    a=-23;
    r=4;
  endfunction
  
endclass


module SV_class();
  
  STATIC c1;
  
  initial
    begin
      c1.a=-33;
      $display("\t Value of a =%0d",c1.a);
      $display("\t Value of s=%s",c1.s);
    end
endmodule



// output.....
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 30 14:59 2023
	 Value of a =-33

Error-[NOA] Null object access
testbench.sv, 26
 The object at dereference depth 0 is being used before it was
 constructed/allocated.
 Please make sure that the object is allocated before using it.

 #0 in SV_class at testbench.sv:26
 #1 in SV_class


          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Sun Apr 30 14:59:43 2023
Exit code expected: 0, received: 1
Done
