module schematic1(
	input a,
	input b,
	input c,
	input clk,
	output F,
	output G,
	output H
);

wire X5, X21, X22, X32, X33;

assign H = X32;


d_latch U2 (
	.data_out(F),
	.in_D( X5 ),
	.in_G( clk )
);

or U5 (X5,a, b, c);

sr_latch U15 (
	.data_out(G),
	.in_S( X21 ),
	.in_R( X22 )
);

and U21 (X21,a, b, c);

nor U22 (X22,a, b, c);

dff U32 (
	.data_out(X32),
	.in_D( X33 ),
	.in_CLK( clk )
);

xor U33 (X33,a, X32);

endmodule


