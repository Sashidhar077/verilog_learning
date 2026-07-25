`timescale 1ns / 1ps

module half_subtractor_tb;

    // Inputs
    reg A;
    reg B;

    // Outputs
    wire Diff;
    wire Borrow;

    // Instantiate the Unit Under Test (UUT)
    half_subtractor uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        // Generate waveform file for GTKWave
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0, half_subtractor_tb);

        // Print header for terminal display
        $display("---------------------------------");
        $display("Time\tA\tB\t|\tDiff\tBorrow");
        $display("---------------------------------");
        $monitor("%0t\t%b\t%b\t|\t%b\t%b", $time, A, B, Diff, Borrow);

        // Test all 4 input combinations
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $display("---------------------------------");
        $finish;
    end

endmodule