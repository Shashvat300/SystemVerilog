// 13. SV Array Randomization (Static Array)

class Parant;
  
  rand bit [3:0] a [4][2][3];
  
endclass

module Random();
  
  initial
    begin
      Parant c1=new();
      repeat(10)
        begin
          c1.randomize();
          $display("\t a=%p",c1.a);
        end
    end
endmodule


-------------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  May 13 14:50 2023
	 a='{'{'{'h3, 'hf, 'h1}, '{'ha, 'h4, 'h3}}, '{'{'h2, 'h9, 'he}, '{'h0, 'ha, 'h3}}, '{'{'he, 'h8, 'h3}, '{'hf, 'h1, 'h8}}, '{'{'ha, 'hf, 'h4}, '{'h1, 'h5, 'hd}}}


	 a='{'{'{'h6, 'h7, 'h6}, '{'h1, 'h3, 'hd}}, '{'{'hb, 'he, 'h8}, '{'h0, 'h3, 'h9}}, '{'{'hd, 'h0, 'hd}, '{'h1, 'hd, 'h6}}, '{'{'h5, 'ha, 'hd}, '{'he, 'hf, 'hb}}}
	 a='{'{'{'h1, 'he, 'h3}, '{'hc, 'h9, 'h2}}, '{'{'hc, 'h4, 'hb}, '{'ha, 'h1, 'h9}}, '{'{'h6, 'ha, 'hf}, '{'h4, 'hc, 'hc}}, '{'{'h0, 'hf, 'hf}, '{'h8, 'h4, 'h1}}}
	 a='{'{'{'h9, 'hf, 'h5}, '{'h3, 'h7, 'ha}}, '{'{'h1, 'h4, 'h9}, '{'h7, 'hc, 'hd}}, '{'{'h9, 'h5, 'h5}, '{'h6, 'hd, 'h3}}, '{'{'he, 'h3, 'h3}, '{'hb, 'he, 'h3}}}
	 a='{'{'{'hd, 'hf, 'h8}, '{'h7, 'h8, 'h5}}, '{'{'hf, 'hc, 'hb}, '{'h8, 'h7, 'h6}}, '{'{'h1, 'hf, 'hf}, '{'h5, 'hd, 'h3}}, '{'{'hb, 'hb, 'h8}, '{'h7, 'hb, 'h7}}}
	 a='{'{'{'h7, 'h8, 'h1}, '{'h1, 'hc, 'h0}}, '{'{'h4, 'h3, 'hb}, '{'h5, 'h9, 'h8}}, '{'{'h5, 'h3, 'h6}, '{'h8, 'h9, 'h1}}, '{'{'h6, 'h4, 'h7}, '{'he, 'h5, 'h6}}}
	 a='{'{'{'h0, 'h1, 'h7}, '{'h2, 'h7, 'hc}}, '{'{'h4, 'h7, 'h0}, '{'hc, 'hb, 'ha}}, '{'{'h7, 'he, 'hf}, '{'ha, 'h7, 'hc}}, '{'{'hf, 'ha, 'h1}, '{'h0, 'hb, 'hb}}}
	 a='{'{'{'h2, 'h5, 'ha}, '{'h2, 'h1, 'h7}}, '{'{'hb, 'hb, 'ha}, '{'ha, 'h6, 'h7}}, '{'{'h1, 'ha, 'h8}, '{'h2, 'h3, 'ha}}, '{'{'h5, 'h0, 'h4}, '{'h4, 'h7, 'hc}}}
	 a='{'{'{'hd, 'hd, 'hf}, '{'h9, 'h8, 'he}}, '{'{'h1, 'h1, 'h1}, '{'h8, 'hf, 'h8}}, '{'{'he, 'hf, 'hd}, '{'hb, 'ha, 'h9}}, '{'{'hf, 'hc, 'h8}, '{'hc, 'hb, 'hb}}}
	 a='{'{'{'ha, 'h6, 'h8}, '{'h7, 'h7, 'h8}}, '{'{'hf, 'h7, 'hd}, '{'h7, 'h6, 'h4}}, '{'{'h5, 'h5, 'h6}, '{'hd, 'h1, 'h2}}, '{'{'h4, 'hc, 'h5}, '{'h2, 'hb, 'ha}}}
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Sat May 13 14:50:09 2023
Done

-------------------------------------------------------------------------------------------------------------------------------------------------

