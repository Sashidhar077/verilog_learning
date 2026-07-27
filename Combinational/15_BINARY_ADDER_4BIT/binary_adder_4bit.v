/* 
4-bit Binary Adder
Adds two 4-bit binary numbers.
Produces a 4-bit Sum and a Carry Out.
*/

module binary_adder_4bit(
        input [3:0]A,B,
        input Cin,
        output [3:0]Sum,
        output Cout    
);

assign {Cout,Sum} = A+B+Cin;

endmodule














