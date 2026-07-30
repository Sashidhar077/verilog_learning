`timescale 1ns / 1ps

module pipo_shift_register_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg load;
    reg [3:0] d_in;

    // Output
    wire [3:0] d_out;

    // Instantiate the Unit Under Test (UUT)
    pipo_shift_register uut (
        .clk(clk),
        .rst_n(rst_n),
        .load(load),
        .d_in(d_in),
        .d_out(d_out)
    );

    // Clock generation (10ns period -> 100MHz)
    always #5 clk = ~clk;

    initial begin
        // Dump VCD for waveform viewing
        $dumpfile("pipo_shift_register.vcd");
        $dumpvars(0, pipo_shift_register_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        load = 0;
        d_in = 4'b0000;

        // Apply reset
        #10 rst_n = 1;

        // Try loading data when load = 0 (should ignore)
        #10 d_in = 4'b1010; load = 0;

        // Load data when load = 1
        #10 d_in = 4'b1101; load = 1;

        // Change input without load (should hold previous value)
        #10 d_in = 4'b0011; load = 0;

        // Load new data
        #10 d_in = 4'b1011; load = 1;

        // Disable load
        #10 load = 0;

        #20;
        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | rst_n = %b | load = %b | d_in = %b | d_out = %b", 
                 $time, rst_n, load, d_in, d_out);
    end

endmodule