module tb_register4bit;

reg clk;
reg [3:0] D;
wire [3:0] Q;

register4bit uut(clk, D, Q);

always
    #5 clk = ~clk;

initial
begin
    clk = 0;
    D = 4'b0000;

    #10 D = 4'b1010;
    #10 D = 4'b1111;
    #10 D = 4'b0101;
    #10 D = 4'b1100;

    #10 $finish;
end

endmodule
