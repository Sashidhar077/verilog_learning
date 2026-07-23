`timescale 1ns/1ps

// Testbench module
module nor_gate_tb;
    // Declare test variables
    reg a;
    reg b;
    wire y;
    integer i; // Loop variable

    // Instantiate the NOR gate (replace 'nor_gate' with your module name)
    nor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        // Monitor changes in signals
        $monitor("Time = %0t | a = %b, b = %b | y = %b", $time, a, b, y);
        $dumpfile("nor_gate.vcd");
        $dumpvars(0,nor_gate_tb);
        // Loop through all 4 combinations (00, 01, 10, 11)
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i; // Concatenate a and b to take the binary value of i
            #10;        // Wait 10 time units for the gate to respond
        end
        
        $finish; // End the simulation
    end
endmodule
