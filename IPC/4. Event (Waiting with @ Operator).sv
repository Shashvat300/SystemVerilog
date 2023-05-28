// 4. Event (Waiting with @ Operator)-----------------------

module Event();
  
  event e1;
  
  initial
    begin
      fork
        begin
          #30;
          $display($time,"\t Triggering the Event");
          ->e1;
        end
        
        begin
          $display($time,"\t Waiting for event for Trigger");
          @(e1.triggered);
          $display($time,"\t Event Triggered");
        end
      join
    end
endmodule


----------------------------------------------------------------------------------------------------------------------------------------------

//Outout....
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 28 12:29 2023
                   0	 Waiting for event for Trigger
                  30	 Triggering the Event
                  30	 Event Triggered
           V C S   S i m u l a t i o n   R e p o r t 
Time: 30 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Sun May 28 12:29:19 2023
Done

----------------------------------------------------------------------------------------------------------------------------------------------
