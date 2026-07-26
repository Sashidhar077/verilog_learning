`timescale 1ns / 1ps

module demux_1_4_tb;

    // Inputs
    reg I;
    reg [1:0] Sel;

    // Outputs
    wire [3:0] Y;

    // Instantiate the Unit Under Test (UUT)
    demux_1_4 uut (
        .I(I),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        // Generate waveform file for GTKWave
        $dumpfile("demux_1_4.vcd");
        $dumpvars(0, demux_1_4_tb);

        // Terminal Display Header
        $display("---------------------------------");
        $display("Time\tSel\tI\t|\tY[3:0]");
        $display("---------------------------------");
        $monitor("%0t\t%b\t%b\t|\t%b", $time, Sel, I, Y);

        // Test with Input I = 1
        I = 1;
        Sel = 2'b00; #10; // Expected Y = 0001
        Sel = 2'b01; #10; // Expected Y = 0010
        Sel = 2'b10; #10; // Expected Y = 0100
        Sel = 2'b11; #10; // Expected Y = 1000

        // Test with Input I = 0
        I = 0;
        Sel = 2'b00; #10; // Expected Y = 0000
        Sel = 2'b11; #10; // Expected Y = 0000

        $display("---------------------------------");
        $finish;
    end

endmodule