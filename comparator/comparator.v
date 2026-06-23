module comparator(
input a,
input b,
output smaller,equal,greater
);

wire  not1, not2;

not NOT1 (not1, a);
not NOT2 (not2, b);
and AND1 (smaller, a, not2);
and AND2 (greater, b, not1);
xnor XNOR1 (equal, a, b);

endmodule
