// Event (Trigger & Wait for an event at same time)


module Event_ev();
  
  event ev1;
  
  initial
    begin
      fork
        begin
          $display($time,"\t Triggring the Event");
          ->ev1;
        end
        
        begin
          $display($time,"\t Watting for Triggring the event");
          wait(ev1.triggered);
          $display($time,"\t Event Triggered");
        end
      join
    end
endmodule



-------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 30 00:18 2023
                   0	 Triggring the Event
                   0	 Watting for Triggring the event
                   0	 Event Triggered
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Tue May 30 00:18:28 2023
Done

-------------------------------------------------------------------------------------------------------------------------------------------------
