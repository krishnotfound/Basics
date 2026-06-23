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