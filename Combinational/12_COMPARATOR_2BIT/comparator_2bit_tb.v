`timescale 1 ns / 1 ps

module comparator_2bit_tb;

    reg [1:0] A;
    reg [1:0] B;
    wire g;
    wire e;
    wire l;

    // Instantiate Unit Under Test (UUT)
    comparator_2bit uut (
        .A(A),
        .B(B),
        .g(g),
        .e(e),
        .l(l)
    );

    initial begin
        $dumpfile("comparator_2bit.vcd");
        $dumpvars(0, comparator_2bit_tb);

        // Test various combinations of 2-bit inputs
        A = 2'b00; B = 2'b00; #10;
        A = 2'b01; B = 2'b00; #10;
        A = 2'b10; B = 2'b11; #10;
        A = 2'b11; B = 2'b10; #10;
        A = 2'b01; B = 2'b01; #10;
        A = 2'b00; B = 2'b10; #10;
        A = 2'b11; B = 2'b11; #10;

        $finish;
    end

endmodule