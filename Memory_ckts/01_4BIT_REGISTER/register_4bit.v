module register_4bit (
    input clk,rst_n,en,
    input [3:0] d_in,
    output reg [3:0] d_out
); 

always@(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        d_out <= 4'b0000;
    end
    else if (en) begin
        d_out <= d_in;
    end
    // If en is 0, the register naturally holds its current value
    end



end
endmodule