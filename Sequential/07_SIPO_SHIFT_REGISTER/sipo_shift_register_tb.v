`timescale 1ns / 1ps

module sipo_shift_register_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg d_in;

    // Output
    wire [3:0] d_out;

    // Instantiate the Unit Under Test (UUT)
    sipo_shift_register uut (
        .clk(clk),
        .rst_n(rst_n),
        .d_in(d_in),
        .d_out(d_out)
    );

    // Clock generation (10ns period -> 100MHz)
    always #5 clk = ~clk;

    initial begin
        // Dump VCD for waveform viewing
        $dumpfile("sipo_shift_register.vcd");
        $dumpvars(0, sipo_shift_register_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        d_in = 0;

        // Apply reset
        #10 rst_n = 1;

        // Input sequence: 1 -> 0 -> 1 -> 1
        #10 d_in = 1; 
        #10 d_in = 0; 
        #10 d_in = 1; 
        #10 d_in = 1; 
        #10 d_in = 0;

        #30;
        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | rst_n = %b | d_in = %b | d_out (Parallel) = %b", 
                 $time, rst_n, d_in, d_out);
    end

endmodule