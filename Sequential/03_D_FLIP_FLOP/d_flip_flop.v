module d_flip_flop(
        input D,clk,
        input rst, //Asynchronous active high reset
        output reg Q,Qbar
);

always@(posedge clk or posedge rst) begin
    if(rst) begin
        Q <= 1'b0;
        Qbar <= 1'b1;
    end
    else begin
        Q <= D;
        Qbar <= ~D;
    end
end
endmodule
