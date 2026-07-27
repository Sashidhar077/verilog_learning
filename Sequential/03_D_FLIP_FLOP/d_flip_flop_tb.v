`timescale 1 ns / 1 ps

module d_flip_flop_tb;

    reg clk;
    reg rst;
    reg D;
    wire Q;
    wire Qbar;

    // Instantiate Unit Under Test (UUT)
    d_flip_flop uut (
        .clk(clk),
        .rst(rst),
        .D(D),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock Generation: 10ns period (5ns HIGH, 5ns LOW)
    always #5 clk = ~clk;

    initial begin
        $dumpfile("d_flip_flop.vcd");
        $dumpvars(0, d_flip_flop_tb);

        // Initialize variables
        clk = 0;
        D = 0;
        
        // Apply Asynchronous Reset
        rst = 1; #12; 
        rst = 0; 

        // Test capturing data on rising edges
        D = 1; #10;
        D = 0; #10;

        // Change D between clock edges to prove it's edge-triggered
        #2; D = 1; // Change D slightly after the clock edge
        #3;        // Wait for the next rising edge to see Q update
        #10;
        
        D = 0; #15;

        $finish;
    end

endmodule