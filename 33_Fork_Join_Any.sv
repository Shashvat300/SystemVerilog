// Fork Joine Any.....................

module fork_Joine();
  
  initial
    begin
      fork
    
       begin
            $display("1st Value",$time);
         #3 $display("2nd Value",$time);
       end
        
        $display("Inside Join",$time);
        
       begin
            $display("3rd Value",$time); 
         #6 $display("4th Value",$time);
       end
      join_any
  
      $display("Outside joine",$time);
    end
  
endmodule


// Result................
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 17 13:42 2023
1st Value                   0
Inside Join                   0
Outside joine                   0
3rd Value                   0
2nd Value                   3
4th Value                   6
           V C S   S i m u l a t i o n   R e p o r t 
Time: 6 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Mon Apr 17 13:42:12 2023
Done
