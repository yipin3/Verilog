module DFF32(Din, reset, w_en, clk, Dout);
input [31:0] Din;
input reset, w_en, clk;
output [31:0] Dout;

reg [31:0] Dout;
always@ (posedge clk) begin
	if (reset)
		Dout <= 32'd0;
	else
		Dout <= (w_en)?Din:Dout;
end

endmodule
