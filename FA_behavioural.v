module FA_behavioural(
input a,
input b,
input carryin,
output reg sum,
output reg carryout
);

always @(*) begin
{carryout, sum} = a + b + carryin;
end

endmodule

module testbench();
reg a;
reg b;
reg carryin;
wire sum;
wire carryout;

FA_behavioural fulladder(
.a(a),
.b(b),
.carryin(carryin),
.carryout(carryout),
.sum(sum)
);

initial begin
$monitor ("a =%b, b= %b, carryin = %b, sum = %b, carryout = %b", a, b, carryin, sum, carryout);
end

initial begin
    #1; a = 0; b = 0; carryin = 0;
    #1; a = 0; b = 0; carryin = 1;
    #1; a = 0; b = 1; carryin = 0;
    #1; a = 0; b = 1; carryin = 1;
    #1; a = 1; b = 0; carryin = 0;
    #1; a = 1; b = 0; carryin = 1;
    #1; a = 1; b = 1; carryin = 0;
    #1; a = 1; b = 1; carryin = 1;
    #1; $finish;
	end
	
	endmodule
