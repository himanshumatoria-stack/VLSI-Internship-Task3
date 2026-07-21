module tb_counter4bit;

reg clk, reset;
wire [3:0] Q;

counter4bit uut(clk, reset, Q);

always
    #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;      // Reset ON

    #10 reset = 0;  // Release reset

    #100 $finish;
end

endmodule
