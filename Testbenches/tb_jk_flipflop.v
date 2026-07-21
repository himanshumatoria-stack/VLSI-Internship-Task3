module tb_jk_flipflop;

reg clk, J, K;
wire Q;

jk_flipflop uut(clk, J, K, Q);

always
    #5 clk = ~clk;

initial
begin
    clk = 0;
    J = 0; K = 0;

    #10 J = 0; K = 1;
    #10 J = 1; K = 0;
    #10 J = 1; K = 1;
    #10 J = 0; K = 0;

    #10 $finish;
end

endmodule
