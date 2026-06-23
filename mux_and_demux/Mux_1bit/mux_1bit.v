module mux_1bit(
input I0,
input I1,
input sel,
output y
);

wire not1, and1, and2;

not NOT1 (not1, sel);
and AND1 (and1, sel, I1);
and AND2 (and2, not1, I0);
or OR1 (y, and1, and2);

endmodule
