// seven segment module
module Seven_Segment(Din,Dout);
input [3:0] Din;
output [6:0] Dout;


assign Dout[0]=((!Din[3])&(!Din[2])&(!Din[1])&  Din[0] )|
               ((!Din[3])&  Din[2] &(!Din[1])&(!Din[0]))|
					(  Din[3] &  Din[2] &(!Din[1])&  Din[0] )|
					(  Din[3] &(!Din[2])&  Din[1] &  Din[0] );

assign Dout[1]=((!Din[3])&  Din[2] &(!Din[1])&  Din[0] )|
               (            Din[2] &  Din[1] &(!Din[0]))|
					(  Din[3] &         &  Din[1] &  Din[0] )|
					(  Din[3] &  Din[2]           &(!Din[0]));

assign Dout[2]=((!Din[3])&(!Din[2])&  Din[1] &(!Din[0]))|
               (  Din[3] &  Din[2] &  Din[1]           )|
					(  Din[3] &  Din[2]           &  Din[0] );
					

assign Dout[3]=((!Din[3])&(!Din[2])&(!Din[1])&  Din[0] )|
               ((!Din[3])&  Din[2] &(!Din[1])&(!Din[0]))|
					(  Din[3] &  Din[2] &(!Din[1])&  Din[0] )|
					(         &(!Din[2])&  Din[1] &  Din[0] );
					
assign Dout[4]=((!Din[3])                    &  Din[0] )|
               (          (!Din[2])&(!Din[1])&  Din[0] )|
					((!Din[3])&  Din[2] &(!Din[1])          );

assign Dout[5]=((!Din[3])&  Din[2] &(!Din[1])&  Din[0] )|
               ((!Din[3])&(!Din[2])          &  Din[0] )|
					((!Din[3])&(!Din[2])&  Din[1]           )|
					((!Din[3])          &  Din[1] &  Din[0] );

assign Dout[6]=((!Din[3])&  Din[2] &  Din[1] &  Din[0] )|
					(  Din[3] &  Din[2] &(!Din[1])&(!Din[0]))|
					((!Din[3])&(!Din[2])&(!Din[1])          );

					
endmodule
