module sipo_shift_register(
    input clk,
    input rst_n, //active low aysnchronous reset
    input d_in,
    output reg [3:0] d_out
);

always@(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            d_out <= 4'b0000;
        end
        else begin
            d_out <= {d_out[2:0],d_in};
        end
end
endmodule