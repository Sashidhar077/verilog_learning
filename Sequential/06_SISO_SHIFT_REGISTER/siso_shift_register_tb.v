`timescale 1ns / 1ps

module siso_shift_register_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg d_in;

    // Output
    wire d_out;

    // Instantiate the Unit Under Test (UUT)
    siso_shift_register uut (
        .clk(clk),
        .rst_n(rst_n),
        .d_in(d_in),
        .d_out(d_out)
    );

    // Clock generation (10ns period -> 100MHz)
    always #5 clk = ~clk;

    initial begin
        // Dump VCD for waveform viewing
        $dumpfile("siso_shift_register.vcd");
        $dumpvars(0, siso_shift_register_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        d_in = 0;

        // Apply reset
        #10 rst_n = 1;

        // Input sequence: 1 -> 0 -> 1 -> 1
        #10 d_in = 1; // Bit 1
        #10 d_in = 0; // Bit 0
        #10 d_in = 1; // Bit 1
        #10 d_in = 1; // Bit 1
        #10 d_in = 0;

        // Wait extra clock cycles to observe total latency (4 clock delay)
        #50;

        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | rst_n = %b | d_in = %b | shift_reg = %b | d_out = %b", 
                 $time, rst_n, d_in, uut.shift_reg, d_out);
    end

endmodule