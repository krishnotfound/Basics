// 1 bit FA
module FA_behavioural(
input a,
input b,
input carry_in,
output reg sum,
output reg carry_out
);

always @(*) begin
{carry_out, sum} = a + b + carry_in;
end

endmodule

// 4bit FA
module FA_4bit(
input [3:0] a,
input [3:0] b,
input carry_in,
output [3:0] sum,
output carry_out
);

wire [2:0] c;

FA_behavioural FA0(
.a(a[0]),
.b(b[0]),
.carry_in(carry_in),
.carry_out(c[0]),
.sum(sum[0])
);
FA_behavioural FA1(
.a(a[1]),
.b(b[1]),
.carry_in(c[0]),
.carry_out(c[1]),
.sum(sum[1])
);
FA_behavioural FA2(
.a(a[2]),
.b(b[2]),
.carry_in(c[1]),
.carry_out(c[2]),
.sum(sum[2])
);
FA_behavioural FA3(
.a(a[3]),
.b(b[3]),
.carry_in(c[2]),
.carry_out(carry_out),
.sum(sum[3])
);

endmodule

//testbench
module testbench();
reg [3:0] a;
reg [3:0] b;
reg carry_in;
wire carry_out;
wire [3:0] sum;

integer i;
integer j;
parameter LOOP_LIMIT = 4;

FA_4bit fulladder(
.a(a),
.b(b),
.carry_in(carry_in),
.carry_out(carry_out),
.sum(sum)
);

initial begin
$monitor ("a = %d, b = %d, carry_in = %b, sum = %d, carry_out = %b", a, b, carry_in, sum, carry_out);
end

  initial begin 
    for (i=0;i<LOOP_LIMIT;i = i+1) begin
      for (j=0; j<LOOP_LIMIT; j = j+1) begin
        #1; a = i; b = j; carry_in = 0;
      end
    end
    end
	endmodule
