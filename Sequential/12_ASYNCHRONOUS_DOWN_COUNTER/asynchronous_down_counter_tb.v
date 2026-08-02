`timescale 1ns/1ps

module asynchronous_down_counter_tb;

reg clk;
reg rst_n;

wire [3:0] Q;

// Instantiate Unit Under Test (UUT)
asynchronous_down_counter uut(
    .clk(clk),
    .rst_n(rst_n),
    .Q(Q)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test Sequence
initial begin

    $dumpfile("asynchronous_down_counter.vcd");
    $dumpvars(0, asynchronous_down_counter_tb);

    rst_n = 0;
    #10;

    rst_n = 1;

    #160;

    $finish;

end

endmodule