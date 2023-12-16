// MUL4_Seg
module MUL4_Seg(A,B,Sout0,Sout1);
input [3:0] A, B;
output [3:0] Sout0, Sout1;

wire [7:0] P;

MUL4 M0(.A(A),.B(B),.P(P));
Seven_Segment S0(.Din(P[3:0]),.Dout(Sout0));
Seven_Segment S1(.Din(P[7:4]),.Dout(Sout1));

endmodule
