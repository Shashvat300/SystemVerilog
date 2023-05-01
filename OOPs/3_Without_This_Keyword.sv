// 4. Without This Keyword


class Arr_Cls;
  
  string name;
  int age;
  byte DOB;
  
  function new(string name, int age, byte DOB);
    name=name;
    age=age;
    DOB=DOB;
  endfunction
  
  function void DISPLAY();
    $display();
    $display("\t name=%s",name);
    $display("\t age=%0d",age);
    $display("\t DOB=%0d\n",DOB);
  endfunction
  
endclass


module CLASS();
  
  Arr_Cls C1;
  
  initial
    begin
      C1=new("Shashvat",32,2002);
      C1.DISPLAY();
    end
  
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Output.....
// Gives by default valur
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 30 13:03 2023

	 name=
	 age=0
	 DOB=0

          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Sun Apr 30 13:03:15 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
