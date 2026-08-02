`timescale 1ns / 1ps

module register_4bit_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg en;
    reg [3:0] d_in;

    // Output
    wire [3:0] d_out;

    // Instantiate the Unit Under Test (UUT)
    register_4bit uut (
        .clk(clk),
        .rst_n(rst_n),
        .en(en),
        .d_in(d_in),
        .d_out(d_out)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // For GTKWave visualization
        $dumpfile("register_4bit.vcd");
        $dumpvars(0, register_4bit_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        en = 0;
        d_in = 4'b0000;

        // Apply reset
        #10 rst_n = 1;

        // Test Case 1: Try to load data without enable (Should HOLD 0000)
        #10 d_in = 4'b1010; en = 0;

        // Test Case 2: Load data with enable (Should output 1010)
        #10 d_in = 4'b1010; en = 1;

        // Test Case 3: Load new data (Should output 1100)
        #10 d_in = 4'b1100; en = 1;

        // Test Case 4: Disable enable and change input (Should HOLD 1100)
        #10 d_in = 4'b1111; en = 0;

        #20 $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | rst_n = %b | en = %b | d_in = %b | d_out = %b", 
                 $time, rst_n, en, d_in, d_out);
    end

endmodule