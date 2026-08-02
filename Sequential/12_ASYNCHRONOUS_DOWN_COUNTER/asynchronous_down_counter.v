module asynchronous_down_counter(
    input clk,
    input rst_n,
    output [3:0] Q
);

reg q0, q1, q2, q3;

// LSB Flip-Flop
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        q0 <= 1'b1;
    else
        q0 <= ~q0;
end

// Trigger on negative edge for down counting
always @(negedge q0 or negedge rst_n) begin
    if (!rst_n)
        q1 <= 1'b1;
    else
        q1 <= ~q1;
end

always @(negedge q1 or negedge rst_n) begin
    if (!rst_n)
        q2 <= 1'b1;
    else
        q2 <= ~q2;
end

always @(negedge q2 or negedge rst_n) begin
    if (!rst_n)
        q3 <= 1'b1;
    else
        q3 <= ~q3;
end

assign Q = {q3,q2,q1,q0};

endmodule