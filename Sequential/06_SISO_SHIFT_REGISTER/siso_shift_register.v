module siso_shift_register(
    input clk,
    input rst_n,  //active low aysnchronous reset
    input d_in,
    output d_out
);

reg [3:0] shift_reg;

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        shift_reg <= 4'b0000;
    end
    else begin
        shift_reg <= {shift_reg[2:0],d_in};

    end

end
assign d_out = shift_reg[3];

endmodule