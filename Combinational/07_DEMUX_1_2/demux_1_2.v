module demux_1_2(
    input I,Sel,
    output Y0,Y1
);

assign Y0=I&(~Sel);
assign Y1=I&Sel;



endmodule