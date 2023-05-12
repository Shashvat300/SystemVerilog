// 12. SV Implication if else Constraints (If Else Constraints)


class Parant;
  
  rand bit [3:0] a;
  string b;
  
  constraint a_name{if(b=="Small")
                     a>10;
                    
                   else
                     a<10; 
                   }
  
  
endclass


module Random();
  
  initial
    begin
      Parant c1=new();
      c1.b="Small";
      repeat(10)
        begin
          c1.randomize();
          $display("\t b=%s a=%0d",c1.b,c1.a);
        end
      
      
      $display();
      $display("--------After initialition Max on B--------");
      c1.b="Max";
      repeat(10)
        begin
          c1.randomize();
          $display("\t b=%s a=%0d",c1.b,c1.a);
        end
    end
endmodule



----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
CPU time: .241 seconds to compile + .314 seconds to elab + .283 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 12 16:00 2023
	 b=Small a=14
	 b=Small a=14
	 b=Small a=15
	 b=Small a=13
	 b=Small a=12
	 b=Small a=14
	 b=Small a=12
	 b=Small a=15
	 b=Small a=11
	 b=Small a=13

--------After initialition Max on B--------
	 b=Max a=2
	 b=Max a=8
	 b=Max a=9
	 b=Max a=4
	 b=Max a=5
	 b=Max a=5
	 b=Max a=6
	 b=Max a=7
	 b=Max a=0
	 b=Max a=9
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Fri May 12 16:00:53 2

----------------------------------------------------------------------------------------------------------------------------------------------
