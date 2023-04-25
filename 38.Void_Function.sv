// 4. Void Function........................

module Function_SV();
  
  int n;
  
  function void strg();
    $display("My name is SHASHVAT MAURYA  Time=%0t",$time);
  endfunction
  
  initial
    begin
      #2;
      strg();
      #22;
      strg();
    end
endmodule





// Result.........

// Compiler version S-2021.09; Runtime version S-2021.09;  Apr 25 14:48 2023
// My name is SHASHVAT MAURYA  Time=2
// My name is SHASHVAT MAURYA  Time=24
//           V C S   S i m u l a t i o n   R e p o r t
// Time: 24 ns
// CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
// Tue Apr 25 14:48:54 2023
// Done
