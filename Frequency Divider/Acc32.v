module Acc32(clk, w_en, reset, Acc_out);
input clk, w_en, reset;
output [31:0] Acc_out;

wire [31:0] Din;

assign Din = Acc_out + 32'd1;

DFF32 D0(.Din(Din), 
		 .reset(reset), 
		 .w_en(w_en), 
		 .clk(clk), 
		 .Dout(Acc_out));

endmodule
