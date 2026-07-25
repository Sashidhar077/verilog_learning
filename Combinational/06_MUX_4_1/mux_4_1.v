module mux_4_1(
        input [3:0]I,
        input [2:0]Sel,
        output reg Y
);


always @(*) begin 
        case(Sel) 
            2'b00:Y=I[0];
            2'b01:Y=I[1];
            2'b10:Y=I[2];
            2'b11:Y=I[3];
            default Y=2'b00;
        endcase



end



endmodule