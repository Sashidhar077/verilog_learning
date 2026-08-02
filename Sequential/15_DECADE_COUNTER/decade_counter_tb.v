`timescale 1ns / 1ps

module decade_counter_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg enable;

    // Output
    wire [3:0] q;

    // Instantiate the Unit Under Test (UUT)
    decade_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .q(q)
    );

    // Clock generation (10ns period -> 100MHz)
    always #5 clk = ~clk;

    initial begin
        // Dump VCD for waveform viewing
        $dumpfile("decade_counter.vcd");
        $dumpvars(0, decade_counter_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        enable = 0;

        // Apply reset
        #15 rst_n = 1;

        // Enable counting past 9 to verify wrap-around behavior
        #15 enable = 1;
        #150;

        // Test pausing
        enable = 0;
        #25;
        enable = 1;
        #50;

        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | rst_n = %b | enable = %b | q = %b (%0d)", 
                 $time, rst_n, enable, q, q);
    end

endmodule