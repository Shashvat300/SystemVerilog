// 11. SV Parameterized Class  

class nothing #(int width = 4);
  
  bit [width-1:0] a;
  
  function void DISPLAY();
    $display("\t Size of WIDTH.a = %0d Bits",$bits(a));
  endfunction
  
endclass


module PARAMETER();
  
  initial
    begin
      nothing C1=new();
      C1.DISPLAY();
    end
  
endmodule


----------------------------------------------------------------------------------------------------------------------------------------------------

// Output__________________________________________________
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May  1 05:29 2023
	 Size of WIDTH.a = 4 Bits
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Mon May  1 05:29:56 2023
Done
----------------------------------------------------------------------------------------------------------------------------------------------------
