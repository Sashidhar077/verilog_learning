`timescale 1 ns / 1 ps

module d_latch_tb;

    reg D;
    reg En;
    wire Q;
    wire Qbar;

    // Instantiate Unit Under Test (UUT)
    d_latch uut (
        .D(D),
        .En(En),
        .Q(Q),
        .Qbar(Qbar)
    );

    initial begin
        $dumpfile("d_latch.vcd");
        $dumpvars(0, d_latch_tb);

        // Initialize inputs
        En = 0; D = 0; #10;

        // =====================================
        // Transparent Mode (En = 1)
        // Q should immediately follow D
        // =====================================
        En = 1; 
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;

        // =====================================
        // Latch / Memory Mode (En = 0)
        // Q should hold its state, ignoring D
        // =====================================
        En = 0; 
        // D changes, but Q should remain 1 (from previous state)
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;

        $finish;
    end

endmodule