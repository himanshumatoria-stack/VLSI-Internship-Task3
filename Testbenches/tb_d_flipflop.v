module tb_d_flipflop;

reg clk, D;
wire Q;

d_flipflop uut(clk, D, Q);

always
    #5 clk = ~clk;

initial
begin
    clk = 0;
    D = 0;

    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;

    #10 $finish;
end

endmodule
