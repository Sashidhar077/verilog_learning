`timescale 1ns / 1ps

module johnson_counter_tb;

    // Inputs
    reg clk;
    reg rst_n;

    // Output
    wire [3:0] q;

    // Instantiate the Unit Under Test (UUT)
    johnson_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    // Clock generation (10ns period -> 100MHz)
    always #5 clk = ~clk;

    initial begin
        // Dump VCD for waveform viewing
        $dumpfile("johnson_counter.vcd");
        $dumpvars(0, johnson_counter_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;

        // Apply reset (loads 0000)
        #15 rst_n = 1;

        // Let the sequence run through all 8 distinct states
        #120;

        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | rst_n = %b | q = %b", 
                 $time, rst_n, q);
    end

endmodule