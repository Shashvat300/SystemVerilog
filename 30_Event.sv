// Event........................

module Event();
  
  event ev_a;
  
  initial
    begin
      #11 ->ev_a;
      $display("Tregered Event at time=%0t\n",$time);
      
    end
  
  initial
    begin
      @(ev_a);
      #3 $display("Receved Event Tregered time=%0t",$time);
    end
endmodule




// Result.................
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 17 09:48 2023
Tregered Event at time=11

Receved Event Tregered time=14
           V C S   S i m u l a t i o n   R e p o r t 
Time: 14 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Mon Apr 17 09:48:29 2023
Done
