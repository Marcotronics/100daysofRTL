module seqdet_ol_tb();

logic s_clk;
logic s_rst;
logic s_data;
logic s_q;
seqdet_ol dut (.clk(s_clk),.rst(s_rst),.data(s_data), .q(s_q));

initial begin
    s_clk = 1'b0;
    forever #5 s_clk = ~s_clk;
end

initial begin
    s_rst <=1'h0;
    #5
    repeat (20) @(posedge s_clk)
        s_data <= $random%2;
    s_rst <=1'h1;
    #5
    s_rst <=1'h0;
    #5
    repeat (20) @(posedge s_clk)
        s_data <= $random%2;
end
initial begin
    $monitor("s_data= %b, s_rst = %b, s_q = %b ",s_data,s_rst, s_q);
end

endmodule


