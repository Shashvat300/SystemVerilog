// 10. Use of $typename()...............


function automatic int add(input a, input int b);
  int sum;

  $display("Data types: a=%s, b=%s, sum=%s", $typename(a), $typename(b), $typename(sum));

  sum = a + b;
  return sum;
endfunction

module test;
  integer a = 5, b = 7, c;

  initial begin
    c = add(a, b);
//     $display("Result: c=%d", c);
  end
endmodule



// Result......
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 27 14:47 2023
Data types: a=logic, b=int, sum=int
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Thu Apr 27 14:47:31 2023
