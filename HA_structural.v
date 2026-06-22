module HA_structural(
input a,
input b,
output sum,
output carry
);

xor XOR1 (sum, a, b);
and AND1 (carry, a, b);

endmodule

module testbench();
reg a;
reg b;
wire carry;
wire sum;

HA_structural halfadder(
.a(a),
.b(b),
.sum(sum),
.carry(carry)
);

  initial begin
    $monitor ("a = %d, b = %d, sum = %d, carry = %d", a, b, sum, carry);
  end

initial begin
#1; a = 1; b = 0;
#1; a = 1; b = 1;
#1; a = 0; b = 0;
#1; a = 0; b = 1;
end
endmodule
