`timescale	10ns/100ps
`include "./top.v"

module voter_tb;

reg [2:0] In_1,In_2,In_3,In_4,In_5;
wire [2:0] Out;

voter UUT(In_1,In_2,In_3,In_4,In_5,Out);

initial begin
$monitor($time," In_1=%b, In_2=%b, In_3=%b, In_4=%b, In_5=%b, Out=%b  ", In_1,In_2,In_3,In_4,In_5,Out);
In_1=3'b1; In_2=3'b1; In_3=3'b1; In_4=3'b1; In_5=3'b1;
#50; In_1=3'b001; In_2=3'b001; In_3=3'b001; In_4=3'b001; In_5=3'b001;
#50; In_1=3'b001; In_2=3'b001; In_3=3'b001; In_4=3'b001; In_5=3'b010;
#50; In_1=3'b001; In_2=3'b001; In_3=3'b001; In_4=3'b001; In_5=3'b100;
#50; In_1=3'b001; In_2=3'b001; In_3=3'b001; In_4=3'b010; In_5=3'b001;
#50; In_1=3'b001; In_2=3'b001; In_3=3'b001; In_4=3'b100; In_5=3'b001;
#50; In_1=3'b001; In_2=3'b001; In_3=3'b001; In_4=3'b010; In_5=3'b010;
#50; In_1=3'b100; In_2=3'b010; In_3=3'b001; In_4=3'b001; In_5=3'b001;
#50; In_1=3'b100; In_2=3'b010; In_3=3'b010; In_4=3'b001; In_5=3'b001;
#50; In_1=3'b100; In_2=3'b010; In_3=3'b010; In_4=3'b010; In_5=3'b010;
#50; In_1=3'b100; In_2=3'b100; In_3=3'b010; In_4=3'b010; In_5=3'b010;
#50; In_1=3'b100; In_2=3'b100; In_3=3'b010; In_4=3'b010; In_5=3'b001;
#50; In_1=3'b100; In_2=3'b100; In_3=3'b100; In_4=3'b010; In_5=3'b001;
#50; In_1=3'b100; In_2=3'b100; In_3=3'b100; In_4=3'b100; In_5=3'b001;
#50; In_1=3'b100; In_2=3'b100; In_3=3'b100; In_4=3'b100; In_5=3'b100;
#50; $finish;


end

/*
#include <stdio.h>
int main()
{
	for (int In_1,In_2,In_3,In_4,In_5=0, In_5<=3; In_5++)
	
		In_5=2^In_5;
}
*/


initial begin
$fsdbDumpfile("wave.fsdb");
$fsdbDumpvars;
end

endmodule