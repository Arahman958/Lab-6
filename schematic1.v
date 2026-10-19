module schematic1(
	input D,
	input E,
	output Q,
	output not_Q
);

wire X51, X52, X53, X54, X57;

assign Q = X53;
assign not_Q = X54;


and U51 (X51,X57, E);

and U52 (X52,E, D);

nor U53 (X53,X51, X54);

nor U54 (X54,X52, X53);

not U57 (X57,D);

endmodule
