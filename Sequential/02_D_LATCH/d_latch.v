module d_latch(
    input D,En,
    output reg Q,Qbar
);

always@(*) begin
    if(En) begin
        Q = D;
        Qbar = ~D;
    end
end

endmodule