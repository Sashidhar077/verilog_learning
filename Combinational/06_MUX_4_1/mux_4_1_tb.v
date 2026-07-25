`timescale 1ns / 1ps

module mux_4_1_tb;

    // Inputs
    reg [3:0] I;
    reg [1:0] Sel;

    // Outputs
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    mux_4_1 uut (
        .I(I),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        // Generate waveform file for GTKWave
        $dumpfile("mux_4_1.vcd");
        $dumpvars(0, mux_4_1_tb);

        // Terminal Display Header
        $display("---------------------------------");
        $display("Time\tSel\tI[3:0]\t|\tY");
        $display("---------------------------------");
        $monitor("%0t\t%b\t%b\t|\t%b", $time, Sel, I, Y);

        // Apply test vector with distinct input bits to verify selection
        I = 4'b1010; // I3=1, I2=0, I1=1, I0=0
        
        Sel = 2'b00; #10; // Should select I[0] = 0
        Sel = 2'b01; #10; // Should select I[1] = 1
        Sel = 2'b10; #10; // Should select I[2] = 0
        Sel = 2'b11; #10; // Should select I[3] = 1

        // Change inputs and re-test select lines
        I = 4'b1100; // I3=1, I2=1, I1=0, I0=0
        Sel = 2'b00; #10; // Should select I[0] = 0
        Sel = 2'b01; #10; // Should select I[1] = 0
        Sel = 2'b10; #10; // Should select I[2] = 1
        Sel = 2'b11; #10; // Should select I[3] = 1

        $display("---------------------------------");
        $finish;
    end

endmodule