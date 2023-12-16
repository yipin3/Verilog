// DFF verilog

module DFF8(Din, reset, w_en, clk, Dout);

input [7:0]Din;
input clk, reset, w_en;
output [7:0] Dout;

reg Dout;

// always@(negedge clk) ..... falling edge-triggered 
always@ (posedge clk or negedge reset) begin  // .... positive edge-triggered
	if (!reset)
		Dout <= 8'd0;
	// "<=": non-blocking cal, it is used in Sequential Circuit.
	// "=": blocking cal, it is used in Combinational Circuit.
	else
		Dout <= (w_en)?Din:Dout;
end

endmodule
