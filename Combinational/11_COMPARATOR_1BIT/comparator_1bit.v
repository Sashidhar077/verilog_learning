module comparator_1bit(
        input A,B,
        output  g,e,l
);

assign g = A>B;
assign l = A<B;
assign e = (A==B);

endmodule


/* 
assign g = A & (~B);
assign l = (~A) & B;
assign e = ~(A^B);

*/