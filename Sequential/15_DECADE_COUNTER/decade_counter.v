module decade_counter (
    input  wire clk,
    input  wire rst_n,       // Active-low asynchronous reset
    input  wire enable,      // Counter enable signal
    output reg [3:0] q       // 4-bit Counter Output
);

always@(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            q <= 4'b0000;
        end else if (enable) begin
                if (q == 9)begin 
                    q <= 4'b000;
                end 
                else begin
                    q <= q+4'b0001;
                end
        end

end
endmodule