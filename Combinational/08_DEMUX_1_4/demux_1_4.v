module demux_1_4(
        input I,
        input [1:0]Sel,
        output reg [3:0]Y
);

always@(*) begin
        case(Sel) 
            2'b00:Y[0]=I;
            2'b01:Y[1]=I;
            2'b10:Y[2]=I;
            2'b11:Y[3]=I;
            default : Y = 2'b00;
        endcase
end
endmodule