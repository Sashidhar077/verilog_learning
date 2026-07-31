//4-bit Asynchronous up counter
module async_up_counter(
    input clk,rst,
    output [3:0] q
);

reg q0,q1,q2,q3;

always@(posedge clk)



endmodule





















/*
An Asynchronous Counter (also called a Ripple Counter) is a counter in which:

Only the first flip-flop receives the external clock.
Each subsequent flip-flop is clocked by the output of the previous flip-flop.
The clock "ripples" through the flip-flops, which is why it is called a Ripple Counter.
*/