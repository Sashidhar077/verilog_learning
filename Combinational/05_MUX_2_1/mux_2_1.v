module mux_2_1(
    input I0,I1,Sel,
    output Y

);


assign Y = (Sel)?I1:I0;


endmodule