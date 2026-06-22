module adder8bit(
  input [7:0] a,
  input [7:0] b,
  output [8:0] sum
);
  
  assign sum = a+b;
endmodule

module testbench();
  reg [7:0] a= 0;
  reg [7:0] b =0;
  wire [8:0] sum;
  
  
  adder8bit ADDER1 (
    .a(a),
    .b(b),
    .sum(sum)
  );
  
  
  initial begin
    $monitor("a = %d, b = %d, sum = %d", a, b, sum);
  end
  
  initial begin
    #1;
    a = 1;
    #1;
    b = 10;
    #1;
    a = 3; b = 99;
    #1;
    a = 101; b = 66;
    #1;
    a = 255; b = 255;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
  
  
endmodule
