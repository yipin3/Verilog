// Accumulator 8-bit

module Acc8(reset, clk, w_en, Sout1, Sout0);
input reset, clk, w_en;
output [6:0] Sout1, Sout0;

wire [7:0] Din, Dout;

assign Din = Dout + 8'd1;

DFF8 D0(.Din(Din), .reset(reset), .w_en(w_en), .clk(clk), .Dout(Dout));

Seven_Segment S0(.Din(Dout[3:0]), .Dout(Sout0));
Seven_Segment S1(.Din(Dout[7:4]), .Dout(Sout1));

endmodule
