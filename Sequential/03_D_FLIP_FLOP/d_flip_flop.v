//Asynchronous D flip flop 

module d_flip_flop(
        input D,rst,clk,
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
