module MultiplierUnit (A,Bi,MUout);
input [3:0] A;
input Bi;
output [3:0] MUout;

and a0(MUout[0], A[0], Bi);
and a1(MUout[1], A[1], Bi);
and a2(MUout[2], A[2], Bi);
and a3(MUout[3], A[3], Bi);

endmodule
