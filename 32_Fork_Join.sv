// Fork Joine.....................

module fork_Joine();
  
  initial
    begin
      fork
    
       begin
         #2 $display("1st Value",$time);
         #3 $display("2nd Value",$time);
       end
        
        $display("In Fork",$time);
        
       begin
         #5 $display("3rd Value",$time); 
         #6 $display("4th Value",$time);
       end
        $display("In Fork 2nd",$time);
     join
  
      $display("Outside joine",$time);
    end
  
endmodule




// Result..........
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 17 13:32 2023
In Fork                   0
In Fork 2nd                   0
1st Value                   2
3rd Value                   5
2nd Value                   5
4th Value                  11
Outside joine                  11
           V C S   S i m u l a t i o n   R e p o r t 
Time: 11 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Mon Apr 17 13:32:56 2023
Done
