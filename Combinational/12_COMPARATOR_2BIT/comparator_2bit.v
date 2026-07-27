module comparator_2bit(
input [1:0]A,B,
output g,l,e
);

assign g = A>B;
assign l = A<B;
assign e =(A==B);


endmodule