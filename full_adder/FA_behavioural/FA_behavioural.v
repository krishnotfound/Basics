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
