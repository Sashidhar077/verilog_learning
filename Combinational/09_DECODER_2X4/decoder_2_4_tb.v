`timescale 1 ns / 1 ps

module decoder_2x4_tb;

    reg [1:0] A;
    reg En;
    wire [3:0] Y;

    // Instantiate Unit Under Test (UUT)
    decoder_2x4 uut (
        .A(A),
        .En(En),
        .Y(Y)
    );

    initial begin
        $dumpfile("decoder_2x4.vcd");
        $dumpvars(0, decoder_2x4_tb);

        // Test when Disabled (En = 0)
        En = 0; A = 2'b00; #10;
        En = 0; A = 2'b01; #10;
        En = 0; A = 2'b10; #10;
        En = 0; A = 2'b11; #10;

        // Test when Enabled (En = 1)
        En = 1; A = 2'b00; #10;
        En = 1; A = 2'b01; #10;
        En = 1; A = 2'b10; #10;
        En = 1; A = 2'b11; #10;

        $finish;
    end

endmodule