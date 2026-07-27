module sr_latch(
    input S,R,
    output reg Q,
    output Q_bar
);

assign Q_bar = ~Q;

always@(*) begin 
        case({S,R})
            2'b00 : Q = Q;     //hold
            2'b01 : Q = 1'b0;  //reset
            2'b10 : Q = 1'b1;  //set
            2'b11 : Q = 1'bx;  //invalid
        endcase
end

endmodule