`timescale 1ns / 1ps

module full_subtractor_tb;

    // Inputs
    reg A;
    reg B;
    reg Bin;

    // Outputs
    wire Diff;
    wire Bout;

    // Instantiate the Unit Under Test (UUT)
    full_subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin
        // Generate waveform for GTKWave
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0, full_subtractor_tb);

        // Terminal Display Header
        $display("---------------------------------");
        $display("Time\tA\tB\tBin\t|\tDiff\tBout");
        $display("---------------------------------");
        $monitor("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Bin, Diff, Bout);

        // Test all 8 input combinations
        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;

        $display("---------------------------------");
        $finish;
    end

endmodule