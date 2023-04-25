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


// Result......
xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
	 A=21
	 B=22
	 Z=65
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	20.09-s003: Exiting on Apr 25, 2023 at 15:27:52 EDT  (total: 00:00:02)
Done
