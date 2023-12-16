module FDiv(Fin, Fsel, reset_0, Fout);
input Fin, reset;
input [2:0] Fsel;
output Fout;

reg Fout;

wire reset, F_t;
wire [31:0] Dout, Dout_h, Acc_out;

assign reset = reset_0 | (Acc_out >= Dout);
assign F_t = (Acc_out > Dout_h);
assign Dout_h = Dout >> 32'd1;  // Dout right shift 

Acc32 A0(.clk(Fin),
		 .w_en(1'b1),
		 .reset(reset),
		 .Acc_out(Acc_out));

Div_Dec D0(.Din(Fsel), .Dout(Dout));

always@(posedge Fin)
	Fout <= F_t;
	
endmodule
