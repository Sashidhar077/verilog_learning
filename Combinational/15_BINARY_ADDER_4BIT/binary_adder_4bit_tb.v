`timescale 1 ns / 1 ps

module binary_adder_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    // Instantiate Unit Under Test (UUT)
    binary_adder_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("binary_adder_4bit.vcd");
        $dumpvars(0, binary_adder_4bit_tb);

        // Test Case 1: 0 + 0 + 0 = 0 (Sum = 0000, Cout = 0)
        A = 4'b0000; B = 4'b0000; Cin = 1'b0; #10;

        // Test Case 2: 5 + 3 + 0 = 8 (Sum = 1000, Cout = 0)
        A = 4'b0101; B = 4'b0011; Cin = 1'b0; #10;

        // Test Case 3: 15 + 1 + 0 = 16 (Sum = 0000, Cout = 1)
        A = 4'b1111; B = 4'b0001; Cin = 1'b0; #10;

        // Test Case 4: 15 + 15 + 1 = 31 (Sum = 1111, Cout = 1)
        A = 4'b1111; B = 4'b1111; Cin = 1'b1; #10;

        // Test Case 5: 10 + 5 + 0 = 15 (Sum = 1111, Cout = 0)
        A = 4'b1010; B = 4'b0101; Cin = 1'b0; #10;

        $finish;
    end

endmodule