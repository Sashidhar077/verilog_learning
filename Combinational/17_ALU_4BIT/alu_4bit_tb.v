module tb_alu_4bit;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] result;

alu_4bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin

    A = 4'b0101;   // 5
    B = 4'b0011;   // 3

    $display("------------------------------------------------");
    $display(" A     B    SEL    RESULT");
    $display("------------------------------------------------");

    sel = 3'b000; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    sel = 3'b001; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    sel = 3'b010; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    sel = 3'b011; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    sel = 3'b100; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    sel = 3'b101; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    sel = 3'b110; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    sel = 3'b111; #10;
    $display("%b  %b  %b    %b", A, B, sel, result);

    $finish;

end

endmodule