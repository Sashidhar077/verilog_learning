`timescale 1ns/1ps

module encoder_4x2_tb;

reg [3:0] D;
wire [1:0] Y;

// Instantiate Unit Under Test (UUT)
encoder_4x2 uut (
    .D(D),
    .Y(Y)
);

initial begin

    $dumpfile("encoder_4x2.vcd");
    $dumpvars(0, encoder_4x2_tb);

    D = 4'b0001;
    #10;

    D = 4'b0010;
    #10;

    D = 4'b0100;
    #10;

    D = 4'b1000;
    #10;

    // Invalid Inputs
    D = 4'b0000;
    #10;

    D = 4'b0011;
    #10;

    D = 4'b1111;
    #10;

    $finish;

end

endmodule