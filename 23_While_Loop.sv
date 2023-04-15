// While Loop..........

module while_loop();
  
  int a;
  
  initial
    begin
      a=1;
      while(a<8)
        begin
          $display("Value of a is %0d",a);
          a++;
        end
    end
endmodule




// Result..........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 16:07 2023
Value of a is 1
Value of a is 2
Value of a is 3
Value of a is 4
Value of a is 5
Value of a is 6
Value of a is 7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Sat Apr 15 16:07:53 2023
Done
