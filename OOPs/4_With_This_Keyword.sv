// 5. With This Keyword

class Arr_Cls;
  
  string name;
  int age;
  int DOB;
  
  function new(string name, int age, int DOB);
    this.name=name;
    this.age=age;
    this.DOB=DOB;
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



// Output.......
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 30 13:10 2023

	 name=Shashvat
	 age=32
	 DOB=2002

          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.660 seconds;       Data structure size:   0.0Mb
Sun Apr 30 13:10:44 2023
Done
