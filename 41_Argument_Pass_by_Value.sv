// Argument Pass by Value

module Function_SV();
  
  int a,b,Z;
  
  function int sum(int a,b);
    a=a+b;
    return a+b;
  endfunction
  
  initial
    begin
      a=21;
      b=22;
      Z=sum(a,b);
      $display("\t A=%0d",a);
      $display("\t B=%0d",b);
      $display("\t Z=%0d",Z);
    end
endmodule
