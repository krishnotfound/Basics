module testbench();
reg I0;
reg I1;
reg sel;
wire y;

mux_1bit muxi(
.I0(I0),
.I1(I1),
.sel(sel),
.y(y)
);

initial begin 
$monitor ("I0 = %b, I1 = %b, sel = %b, y = %d", I0, I1, sel, y);
end

initial begin
#1; I0 = 0; I1 = 0; sel = 0;
#1; I0 = 0; I1 = 1; sel = 0;
#1; I0 = 1; I1 = 0; sel = 0;
#1; I0 = 1; I1 = 1; sel = 0;
#1; I0 = 0; I1 = 0; sel = 1;
#1; I0 = 0; I1 = 1; sel = 1;
#1; I0 = 1; I1 = 0; sel = 1;
#1; I0 = 1; I1 = 1; sel = 1;
end
endmodule