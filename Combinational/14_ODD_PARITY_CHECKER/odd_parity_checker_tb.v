`timescale 1 ns / 1 ps

module odd_parity_checker_tb;

    reg [3:0] data_in;
    reg parity_bit_in;
    wire error;

    // Instantiate Unit Under Test (UUT)
    odd_parity_checker uut (
        .data_in(data_in),
        .parity_bit_in(parity_bit_in),
        .error(error)
    );

    initial begin
        $dumpfile("odd_parity_checker.vcd");
        $dumpvars(0, odd_parity_checker_tb);

        // Test Case 1: Data has odd 1s (e.g., 4'b0001 -> single 1), correct odd parity bit = 0 -> No Error
        data_in = 4'b0001; parity_bit_in = 1'b0; #10;

        // Test Case 2: Data has odd 1s (4'b0001), incorrect parity bit = 1 -> Error
        data_in = 4'b0001; parity_bit_in = 1'b1; #10;

        // Test Case 3: Data has even 1s (e.g., 4'b0011 -> two 1s), correct odd parity bit = 1 -> No Error
        data_in = 4'b0011; parity_bit_in = 1'b1; #10;

        // Test Case 4: Data has even 1s (4'b0011), incorrect parity bit = 0 -> Error
        data_in = 4'b0011; parity_bit_in = 1'b0; #10;

        $finish;
    end

endmodule