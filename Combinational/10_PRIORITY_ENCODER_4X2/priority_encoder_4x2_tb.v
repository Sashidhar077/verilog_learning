`timescale 1 ns / 1 ps

module priority_encoder_4x2_tb;

    reg [3:0] D;
    wire [1:0] Y;
    wire valid;

    priority_encoder_4x2 uut (
        .D(D),
        .Y(Y),
        .valid(valid)
    );

    initial begin
        $dumpfile("priority_encoder_4x2.vcd");
        $dumpvars(0, priority_encoder_4x2_tb);

        D = 4'b0001; #10;
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;

        D = 4'b0110; #10; 
        D = 4'b1011; #10; 

        D = 4'b0000; #10;

        $finish;
    end

endmodule
