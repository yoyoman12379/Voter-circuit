module voter(In_1,In_2,In_3,In_4,In_5,Out);
input [2:0] In_1,In_2,In_3,In_4,In_5;
output [2:0] Out;

wire [2:0] a0 = In_1[0]+In_2[0]+In_3[0]+In_4[0]+In_5[0];
wire [2:0] a1 = In_1[1]+In_2[1]+In_3[1]+In_4[1]+In_5[1];
wire [2:0] a2 = In_1[2]+In_2[2]+In_3[2]+In_4[2]+In_5[2];
wire a0a1 = ( a0 > a1 ) ? 1:0;
wire a0a2 = ( a0 > a2 ) ? 1:0;
wire a1a2 = ( a1 > a2 ) ? 1:0;
wire [2:0] Out = ( a0a1 & a0a2 ) ? 3'b001 : 
                 (~a0a1 & a1a2 ) ? 3'b010 :
				 3'b100;
				 

endmodule