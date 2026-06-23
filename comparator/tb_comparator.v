module testbench();
reg a;
reg b;
wire smaller;
wire greater;
wire equal;

comparator COMP(
.a(a),
.b(b),
.smaller(smaller),
.greater(greater),
.equal(equal)
);

initial begin 
$monitor ("a = %d, b = %d, smaller = %d, greater = %d, equal = %d", a, b, smaller, greater, equal);
end

initial begin
   #1; a=0; b=0;
   #1; a=0; b=1;
   #1; a=1; b=0;
   #1; a=1; b=1;
   end
   endmodule