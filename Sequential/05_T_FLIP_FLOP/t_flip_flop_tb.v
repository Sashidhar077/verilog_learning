`timescale 1 ns / 1 ps

module t_flip_flop_tb;

    reg clk;
    reg rst;
    reg T;
    wire Q;
    wire Qbar;

    // Instantiate Unit Under Test (UUT)
    t_flip_flop uut (
        .clk(clk),
        .rst(rst),
        .T(T),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock Generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("t_flip_flop.vcd");
        $dumpvars(0, t_flip_flop_tb);

        // Initialize and Reset
        clk = 0; T = 0;
        rst = 1; #12; 
        rst = 0; 

        // Test Hold condition
        T = 0; #10;

        // Test Toggle condition for multiple clock cycles
        T = 1; #30; // Watch Q toggle every positive clock edge

        // Return to Hold condition
        T = 0; #20;

        $finish;
    end

endmodule