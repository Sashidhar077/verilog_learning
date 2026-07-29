`timescale 1 ns / 1 ps

module jk_flip_flop_tb;

    reg clk;
    reg rst;
    reg J;
    reg K;
    wire Q;
    wire Qbar;

    // Instantiate Unit Under Test (UUT)
    jk_flip_flop uut (
        .clk(clk),
        .rst(rst),
        .J(J),
        .K(K),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock Generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("jk_flip_flop.vcd");
        $dumpvars(0, jk_flip_flop_tb);

        // Initialize and Reset
        clk = 0; J = 0; K = 0;
        rst = 1; #12; 
        rst = 0; 

        // Set condition
        J = 1; K = 0; #10;

        // Hold condition
        J = 0; K = 0; #10;

        // Reset condition
        J = 0; K = 1; #10;

        // Toggle condition
        J = 1; K = 1; #20; 

        // Hold condition
        J = 0; K = 0; #10;

        $finish;
    end

endmodule