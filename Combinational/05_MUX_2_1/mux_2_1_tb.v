`timescale 1ns / 1ps

module mux_2_1_tb;

    // Inputs
    reg I0;
    reg I1;
    reg Sel;

    // Outputs
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    mux_2_1 uut (
        .I0(I0),
        .I1(I1),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        // Generate waveform file for GTKWave
        $dumpfile("mux_2_1.vcd");
        $dumpvars(0, mux_2_1_tb);

        // Terminal Display Header
        $display("---------------------------------");
        $display("Time\tSel\tI1\tI0\t|\tY");
        $display("---------------------------------");
        $monitor("%0t\t%b\t%b\t%b\t|\t%b", $time, Sel, I1, I0, Y);

        // Test vectors
        // Set inputs and toggle select lines
        I0 = 0; I1 = 0; Sel = 0; #10;
        Sel = 1; #10;
        
        I0 = 0; I1 = 1; Sel = 0; #10;
        Sel = 1; #10;
        
        I0 = 1; I1 = 0; Sel = 0; #10;
        Sel = 1; #10;
        
        I0 = 1; I1 = 1; Sel = 0; #10;
        Sel = 1; #10;

        $display("---------------------------------");
        $finish;
    end

endmodule