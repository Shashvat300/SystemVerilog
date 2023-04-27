11. Use of $typename() in Task


task my_task(input [7:0] a, input [7:0] b);
  int sum;

  $display("Data types: a=%s, b=%s, sum=%s", $typename(a), $typename(b), $typename(sum));

  sum = a + b;
  $display("Sum: %d", sum);
endtask

module test;
  reg [7:0] a = 5, b = 7;

  initial begin
    my_task(a, b);
  end
endmodule




// Result....
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 27 15:25 2023
Data types: a=logic[7:0], b=logic[7:0], sum=int
Sum:          12
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Thu Apr 27 15:25:53 2023
Done
