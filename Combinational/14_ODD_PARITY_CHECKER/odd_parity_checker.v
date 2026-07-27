module odd_parity_checker(
    input [3:0]data_in,
    input parity_bit_in,
    output error
);


assign error = ~(data_in[0]^data_in[1]^data_in[2]^data_in[3]^parity_bit_in);

endmodule