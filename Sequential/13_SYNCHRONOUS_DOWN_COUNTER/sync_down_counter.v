// 4-bit synchronous down counter 
module sync_down_counter(
    input clk,rst_n,enable,
    output reg [3:0] q
);

always@(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            q <= 4'b1111;
        end
        else if(enable) begin
            q <= q-4'b0001;
        end
        else begin
            q <= q;
        end


end
endmodule