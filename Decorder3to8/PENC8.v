module PENC8(Din, Dout, Valid);
input [7:0] Din;
output [2:0] Dout;
output Valid;

wire [1:0] A, B;
wire V0, V1;

PENC4 P0(.Din(Din[3:0]), .Dout(B), .Valid(V0));
PENC4 P1(.Din(Din[4:7]), .Dout(A), .Valid(V1));

assign Valid = V0 | V1;
assign Dout[2] = V1;
assign Dout[1:0] = (Dout[2]) ? A : B;

endmodule
