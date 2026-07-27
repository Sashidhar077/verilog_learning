module tb_sr_latch;

reg S;
reg R;

wire Q;
wire Q_bar;

sr_latch uut(
    .S(S),
    .R(R),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin

    $display("S R | Q Q_bar");

    S=0; R=0; #10;
    $display("%b %b | %b %b",S,R,Q,Q_bar);

    S=1; R=0; #10;
    $display("%b %b | %b %b",S,R,Q,Q_bar);

    S=0; R=0; #10;
    $display("%b %b | %b %b",S,R,Q,Q_bar);

    S=0; R=1; #10;
    $display("%b %b | %b %b",S,R,Q,Q_bar);

    S=1; R=1; #10;
    $display("%b %b | %b %b",S,R,Q,Q_bar);

    $finish;

end

endmodule