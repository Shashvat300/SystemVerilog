// do-while loop..................

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
      while(a<=20);
      
    end
endmodule




// Result.......
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 15 15:54 2023
VAlue of a is           2
VAlue of a is           4
VAlue of a is           6
VAlue of a is           8
VAlue of a is          10
VAlue of a is          12
VAlue of a is          14
VAlue of a is          16
VAlue of a is          18
VAlue of a is          20
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Sat Apr 15 15:54:21 2023
Done
