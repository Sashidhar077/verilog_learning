module johnson_counter (
    input   clk,
    input   rst_n,       // Active-low asynchronous reset (sets a single '1' for circulation)
    output reg [3:0] q       // 4-bit Counter Output
);
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        q <= 4'b0001;
    end else begin
        q[3] <= q[2];
        q[2] <= q[1];
        q[1] <= q[0];
        q[0] <= ~q[3]; // Wrap MSB back to LSB
    end
end
endmodule