module lfsr_tb();

logic s_clk;
logic s_rst;
logic [3:0] s_q;

lfsr uut(.clk(s_clk), .rst(s_rst), .q(s_q));

initial begin
    s_clk = 1'b0;
    forever #5 s_clk = ~s_clk;
end

initial begin
    s_rst = 1'b0;
    #10
    s_rst = 1'b1;
    #10
    s_rst = 1'b0;
    #70
    s_rst = 1'b1;
    #10
    s_rst = 1'b0;
end

initial begin
    $monitor("s_rst = %b ,s_q = %b  ",s_rst,s_q);
end

endmodule

