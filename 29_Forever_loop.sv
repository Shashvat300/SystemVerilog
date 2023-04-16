// Forever...............

module For_Ever();
  
  int a;
  
  initial 
    begin
      forever
        begin
          $display("\t Value of a=%0d",a);
          a++;
          #2;
        end
    end
  
  initial
    #10 $finish;
    
endmodule



// Result.......................
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 16 13:13 2023
	 Value of a=0
	 Value of a=1
	 Value of a=2
	 Value of a=3
	 Value of a=4
$finish called from file "design.sv", line 19.
$finish at simulation time                   10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Sun Apr 16 13:13:47 2023
Done
