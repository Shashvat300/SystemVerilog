// 3. Class Functiom Call

class Arr_Cls;
  
  string name;
  int age;
  byte DOB;
  
  function new;
    name="Shashvat";
    age=23;
    DOB=2002;
  endfunction
  
  function void DISPLAY();
    $display();
    $display("\t name=%s",name);
    $display("\t age=%0d",age);
    $display("\t DOB=%0d\n",DOB);
  endfunction
  
endclass



module CLASS();
  
  initial
    begin
      Arr_Cls C1=new();
      C1.DISPLAY();
    end
  
endmodule



// Output......
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 30 11:03 2023

	 name=Shashvat
	 age=23
	 DOB=-46

          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Sun Apr 30 11:03:25 2023
