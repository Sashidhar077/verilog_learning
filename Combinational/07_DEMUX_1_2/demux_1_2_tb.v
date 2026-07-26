`timescale 1ns / 1ps

module demux_1_2_tb;

    // Inputs
    reg I;
    reg Sel;

    // Outputs
    wire Y0;
    wire Y1;

    // Instantiate the Unit Under Test (UUT)
    demux_1_2 uut (
        .I(I),
        .Sel(Sel),
        .Y0(Y0),
        .Y1(Y1)
    );

    initial begin
        // Generate waveform file for GTKWave
        $dumpfile("demux_1_2.vcd");
        $dumpvars(0, demux_1_2_tb);

        // Terminal Display Header
        $display("---------------------------------");
        $display("Time\tSel\tI\t|\tY1\tY0");
        $display("---------------------------------");
        $monitor("%0t\t%b\t%b\t|\t%b\t%b", $time, Sel, I, Y1, Y0);

        // Test vectors
        // Test when Input is 0
        I = 0; Sel = 0; #10;
        Sel = 1; #10;

        // Test when Input is 1
        I = 1; Sel = 0; #10;
        Sel = 1; #10;

        $display("---------------------------------");
        $finish;
    end

endmodule