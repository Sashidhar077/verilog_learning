module pipo_shift_register(
    input clk,
    input rst_n, //active low aysnchronous reset
    input load,   // Load control signal (1 = load parallel data, 0 = hold)
    input [3:0] d_in,
    output reg [3:0] d_out
);

always@(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            d_out <= 4'b0000;
        end
        else if(load) begin
            d_out <= d_in;
        end
end
endmodule