`timescale 1ns/1ps

module decoder_3x8_tb;

reg [2:0] A;
reg [2:0]En;

wire [7:0] Y;

// Instantiate Unit Under Test (UUT)
decoder_3x8 uut (
    .A(A),
    .En(En),
    .Y(Y)
);

initial begin

    $dumpfile("decoder_3x8.vcd");
    $dumpvars(0, decoder_3x8_tb);

    // Decoder Disabled
    En = 0;

    A = 3'b000;
    #10;

    A = 3'b001;
    #10;

    A = 3'b010;
    #10;

    A = 3'b011;
    #10;

    A = 3'b100;
    #10;

    A = 3'b101;
    #10;

    A = 3'b110;
    #10;

    A = 3'b111;
    #10;

    // Decoder Enabled
    En = 1;

    A = 3'b000;
    #10;

    A = 3'b001;
    #10;

    A = 3'b010;
    #10;

    A = 3'b011;
    #10;

    A = 3'b100;
    #10;

    A = 3'b101;
    #10;

    A = 3'b110;
    #10;

    A = 3'b111;
    #10;

    $finish;

end

endmodule