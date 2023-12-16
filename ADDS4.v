//add,substrate function combine

module ADDS4 (A,B,M,S,Cout,V);
input [3:0] A,B;
input M;
output [3:0] S;
output Cout,V;

wire [3:0] NB;
wire C0,C1,C2;

// {4{M}} equals to {M,M,M,M}
assign NB = B ^ {4{M}};

FA F0(.A(A[0]), .B(NB[0]), .Cin(M),  .S(S[0]), .Cout(C0));
FA F1(.A(A[1]), .B(NB[1]), .Cin(C0), .S(S[1]), .Cout(C1));
FA F2(.A(A[2]), .B(NB[2]), .Cin(C1), .S(S[2]), .Cout(C2));
FA F3(.A(A[3]), .B(NB[3]), .Cin(C2), .S(S[3]), .Cout(Cout));

assign V = C2 ^ Cout;

endmodule
