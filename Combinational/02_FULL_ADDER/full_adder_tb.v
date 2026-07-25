`timescale 1ns / 1ps

module full_adder_tb;

    // Inputs
    reg A;
    reg B;
    reg Cin;

    // Outputs
    wire Sum;
    wire Cout;

    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Generate waveform file for GTKWave
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);

        // Print header for terminal display
        $display("---------------------------------");
        $display("Time\tA\tB\tCin\t|\tSum\tCout");
        $display("---------------------------------");
        $monitor("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);

        // Test all 8 input combinations
        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $display("---------------------------------");
        $finish;
    end

endmodule