module t_flip_flop(
    input T,clk,rst,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always@(posedge clk) begin 
        if(rst) begin 
            Q <= 1'b0;
        end
        else begin 
            if(T) begin 
                Q <= ~Q;
            end
            else begin 
                Q <= Q; 
            end
        end
end
endmodule