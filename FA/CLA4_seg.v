module CLA4_seg(A,B,Cin,Sout,Cout);
input [3:0] A,B;
input Cin;
output Sout;
output Cout;

wire [3:0] S;

CLA4 C0(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));
Seven_Segment S0(.Din(S), .Dout(Sout));

endmodule
