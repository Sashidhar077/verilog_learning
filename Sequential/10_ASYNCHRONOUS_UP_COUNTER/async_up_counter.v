module asynchronous_up_counter(
    input clk,
    input rst_n,
    output [3:0] Q
);

reg q0, q1, q2, q3;

// First Flip-Flop
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        q0 <= 1'b0;
    else
        q0 <= ~q0;
end

// Second Flip-Flop
always @(posedge q0 or negedge rst_n) begin
    if (!rst_n)
        q1 <= 1'b0;
    else
        q1 <= ~q1;
end

// Third Flip-Flop
always @(posedge q1 or negedge rst_n) begin
    if (!rst_n)
        q2 <= 1'b0;
    else
        q2 <= ~q2;
end

// Fourth Flip-Flop
always @(posedge q2 or negedge rst_n) begin
    if (!rst_n)
        q3 <= 1'b0;
    else
        q3 <= ~q3;
end

assign Q = {q3, q2, q1, q0};

endmodule