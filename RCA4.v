// 4-bit Ripple-carry Adder

module RCA4(A, B, Cin, S, Cout);
input [3:0] A,B;
input Cin;
output [3:0] S;
output Cout;

wire C0, C1, C2;

FA F0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(C0));
FA F1(.A(A[1]), .B(B[1]), .Cin(C0),  .S(S[1]), .Cout(C1));
FA F2(.A(A[2]), .B(B[2]), .Cin(C1),  .S(S[2]), .Cout(C2));
FA F3(.A(A[3]), .B(B[3]), .Cin(C2),  .S(S[3]), .Cout(Cout));

endmodule

