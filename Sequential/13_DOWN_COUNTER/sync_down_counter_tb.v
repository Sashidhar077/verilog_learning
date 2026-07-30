`timescale 1ns / 1ps

module sync_down_counter_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg enable;

    // Output
    wire [3:0] q;

    // Instantiate the Unit Under Test (UUT)
    sync_down_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .q(q)
    );

    // Clock generation (10ns period -> 100MHz)
    always #5 clk = ~clk;

    initial begin
        // Dump VCD for waveform viewing
        $dumpfile("sync_down_counter.vcd");
        $dumpvars(0, sync_down_counter_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        enable = 0;

        // Apply reset (sets counter to 15)
        #15 rst_n = 1;

        // Enable counting down
        #15 enable = 1;

        // Let it count down past zero (underflow) to observe wrap-around
        #200;

        // Disable counter temporarily
        enable = 0;
        #20;
        enable = 1;
        #40;

        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | rst_n = %b | enable = %b | q = %b (%0d)", 
                 $time, rst_n, enable, q, q);
    end

endmodule