module demux_1bit(
input I,
input sel,
output y0,
output y1
);

wire not1;

not NOT1 (not1, sel);
and AND1 (y0, not1, I);
and AND2 (y1, sel, I);

endmodule
