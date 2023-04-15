// do-while loop..................



// do-while is similar to while loop but in case of while loop execution of statements happens only if the condition is true. 
// In a do while, statements inside the loop will be executed at least once even if the condition is not satisfied.


module do_while();
  
  int a;
  
  initial
    begin
      a=2;
      do
        begin
          $display("VAlue of a is %d",a);
          a=a+2;
        end
      while(a<1);
      
    end
endmodule




// Result.........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 15:57 2023
VAlue of a is           2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Sat Apr 15 15:57:03 2023
Done
