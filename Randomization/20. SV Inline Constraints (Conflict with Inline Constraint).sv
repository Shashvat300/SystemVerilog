// 20. SV Inline Constraints (Conflict with Inline Constraint)

class myClass;
  
  rand int a;
  
  constraint a_name  { a<10;}
endclass

module myRandom;
  
  initial
    begin
      myClass c1=new();
      repeat(10)
        begin
          c1.randomize() with{a>10;};
          $display("\t Random Value of a=%0d",c1.a);
        end
    end
endmodule



-----------------------------------------------------------------------------------------------------------------------------------------------

// Output...
Note-[CNST-SATE] Standalone test extracted
 A standalone test-case for this failure has automatically been extracted
 from randomize serial 8 partition 1.
 To reproduce the error using the extracted testcase, please use the
 following command:
 cd /home/runner/./simv.cst/testcases;
 vcs -sverilog extracted_r_8_p_1_inconsistent_constraints.sv -R
 To reproduce the error using the original design and verbose logging, re-run
 simulation using:
 simv +ntb_solver_debug=trace +ntb_solver_debug_filter=8
 To reproduce the error using the original design and debug the error with
 Verdi/DVE:
 1. re-compile the original design with -debug_access+all, if not already
 done so
 	% vcs -debug_access+all <other options>
 2. re-run the simulation interactively with -gui/-verdi
 	% simv -gui/-verdi <other options>
 3. enter the following commands to begin interactive constraint
 inconsistency debug within Verdi/DVE
 	I. set the breakpoint:	verdi/dve> stop -solver -serial 8
 	II. run the simulation till it stops:	verdi/dve> run
 	III. step in the constraint solver:	verdi/dve> step -solver


Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 16
 Constraints are inconsistent and cannot be solved.
 Please check the inconsistent constraints being printed above and rewrite
 them.

	 Random Value of a=0

=======================================================

Solver failed when solving following set of constraints


rand integer a; // rand_mode = ON

constraint a_name    // (from this) (constraint_mode = ON) (testbench.sv:6)
{
  (a < 10);
}
constraint WITH_CONSTRAINT    // (from this) (constraint_mode = ON) (testbench.sv:16)
{
  (a > 10);
}

=======================================================


Note-[CNST-SATE] Standalone test extracted
 A standalone test-case for this failure has automatically been extracted
 from randomize serial 9 partition 1.
 To reproduce the error using the extracted testcase, please use the
 following command:
 cd /home/runner/./simv.cst/testcases;
 vcs -sverilog extracted_r_9_p_1_inconsistent_constraints.sv -R
 To reproduce the error using the original design and verbose logging, re-run
 simulation using:
 simv +ntb_solver_debug=trace +ntb_solver_debug_filter=9
 To reproduce the error using the original design and debug the error with
 Verdi/DVE:
 1. re-compile the original design with -debug_access+all, if not already
 done so
 	% vcs -debug_access+all <other options>
 2. re-run the simulation interactively with -gui/-verdi
 	% simv -gui/-verdi <other options>
 3. enter the following commands to begin interactive constraint
 inconsistency debug within Verdi/DVE
 	I. set the breakpoint:	verdi/dve> stop -solver -serial 9
 	II. run the simulation till it stops:	verdi/dve> run
 	III. step in the constraint solver:	verdi/dve> step -solver


Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 16
 Constraints are inconsistent and cannot be solved.
 Please check the inconsistent constraints being printed above and rewrite
 them.

	 Random Value of a=0

=======================================================

Solver failed when solving following set of constraints


rand integer a; // rand_mode = ON

constraint a_name    // (from this) (constraint_mode = ON) (testbench.sv:6)
{
  (a < 10);
}
constraint WITH_CONSTRAINT    // (from this) (constraint_mode = ON) (testbench.sv:16)
{
  (a > 10);
}

=======================================================


Note-[CNST-SATE] Standalone test extracted
 A standalone test-case for this failure has automatically been extracted
 from randomize serial 10 partition 1.
 To reproduce the error using the extracted testcase, please use the
 following command:
 cd /home/runner/./simv.cst/testcases;
 vcs -sverilog extracted_r_10_p_1_inconsistent_constraints.sv -R
 To reproduce the error using the original design and verbose logging, re-run
 simulation using:
 simv +ntb_solver_debug=trace +ntb_solver_debug_filter=10
 To reproduce the error using the original design and debug the error with
 Verdi/DVE:
 1. re-compile the original design with -debug_access+all, if not already
 done so
 	% vcs -debug_access+all <other options>
 2. re-run the simulation interactively with -gui/-verdi
 	% simv -gui/-verdi <other options>
 3. enter the following commands to begin interactive constraint
 inconsistency debug within Verdi/DVE
 	I. set the breakpoint:	verdi/dve> stop -solver -serial 10
 	II. run the simulation till it stops:	verdi/dve> run
 	III. step in the constraint solver:	verdi/dve> step -solver


Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 16
 Constraints are inconsistent and cannot be solved.
 Please check the inconsistent constraints being printed above and rewrite
 them.

	 Random Value of a=0
          V C S   S i m u l a t i o n   R e p o r t
Time: 0 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Tue May 16 14:18:49 2023
Done

-----------------------------------------------------------------------------------------------------------------------------------------------
   
