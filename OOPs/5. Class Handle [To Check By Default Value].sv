6. Class Handle [To Check By Default Value]

class Check;
  
  int i;
  
endclass

module Class();
  
  Check C1;
  
  initial
    begin
      if(C1==null)
        $display("\t Class is null");
      else
        $display("\t Class is not null");
      
      C1=new();
      
      if(C1==null)
        $display("\t After initializing new :: Class is still null");
      else
        $display("\t After initializing new ::  Class is not null");
        
      $display("\t Value of class is %0d",C1.i);
    end
endmodule



Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 30 13:52 2023
	 Class is null
	 After initializing new ::  Class is not null
	 Value of class is 0
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.620 seconds;       Data structure size:   0.0Mb
Sun Apr 30 13:52:58 2023
Done
