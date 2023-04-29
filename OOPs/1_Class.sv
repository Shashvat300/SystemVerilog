class Shashvat;
  
  int i,set;
  bit b;
  logic l;
  
//   Constructor(Class Constructor use to initized the value within the class)
  function new();
    i=32;
    b=1;
    l=0;
  endfunction
  
//   Methods-1...
  function int fun(int x,y);
    return x+y;
  endfunction
  
//   Method-2...
  task tk(int z);
    set=z;
  endtask
  
endclass


module Creating_Class();
  
initial
  begin    
//     Creating Handle & Object
    Shashvat c1=new();
    $display("\t c1: Value of i=%0d",c1.i);
    $display("\t c1: Value of fun=%0d",c1.fun(21,22));
  end
  
endmodule




// Result.......
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 29 14:23 2023
	 c1: Value of i=32
	 c1: Value of fun=43
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Sat Apr 29 14:23:11 2023
Done
