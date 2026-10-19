module schematic1(
	input CLK,
	output R
);

wire X17, X18;

assign R = X17;


d_latch U17 (
	.data_out(X17),
	.in_D( X18 ),
	.in_G( CLK )
);

not U18 (X18,X17);

endmodule
