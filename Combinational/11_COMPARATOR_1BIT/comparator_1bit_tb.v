`timescale 1 ns / 1 ps

module comparator_1bit_tb;

    reg A;
    reg B;
    wire g;
    wire e;
    wire l;

    // Instantiate Unit Under Test (UUT)
    comparator_1bit uut (
        .A(A),
        .B(B),
        .g(g),
        .e(e),
        .l(l)
    );

    initial begin
        $dumpfile("comparator_1bit.vcd");
        $dumpvars(0, comparator_1bit_tb);

        // Exhaustive testing for all 4 input combinations (2^2)
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule