module schematic1(
	input CLK,
	output Q
);

wire X2, X6;

assign Q = X2;


dff U2 (
	.data_out(X2),
	.in_D( X6 ),
	.in_CLK( CLK )
);

not U6 (X6,X2);

endmodule
