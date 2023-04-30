// 8. SV Class Static Variables


class STATIC;
  
  string s;
  static int a;
  reg [3:0] r;
  
//   constructor_________
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
      $display("\ Value of a =%0d",c1.a);
    end
endmodule





// Output......
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 30 14:35 2023
Value of a =-33
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.620 seconds;       Data structure size:   0.0Mb
Sun Apr 30 14:35:19 2023
Done
