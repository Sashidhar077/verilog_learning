module priority_encoder_4x2 (
    input [3:0] D,
    output reg [1:0] Y,
    output reg valid
);

    always @(*) begin
        valid = 1'b1;
        if (D[3]) begin
            Y = 2'b11;
        end else if (D[2]) begin
            Y = 2'b10;
        end else if (D[1]) begin
            Y = 2'b01;
        end else if (D[0]) begin
            Y = 2'b00;
        end else begin
            Y = 2'b00;
            valid = 1'b0; // No valid input active
        end
    end

endmodule
