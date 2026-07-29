module jk_flip_flop (
    input J,K,clk,rst,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always@(posedge clk) begin 
    if(rst) begin 
        Q<=1'b0;
    end
    else begin 
        case ({J,K})
            2'b00:Q<=Q;
            2'b01:Q<=1'b0;
            2'b10:Q<=1'b1;
            2'b11:Q<=~Q;
        endcase
    end
end
endmodule