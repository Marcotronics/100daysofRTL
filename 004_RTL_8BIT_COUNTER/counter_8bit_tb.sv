module counter_8bit_tb();

logic s_clk;
logic [7:0] s_count;
logic s_rst;

counter_8bit uut(.clk(s_clk),.count(s_count),.rst(s_rst));

initial begin
    s_clk=1'b0;
    forever #5 s_clk= ~s_clk;
end

initial begin
    s_rst=1'b0;
    #15
    s_rst=1'b1;
end

initial begin
    // Function to print out changes
    $monitor("s_count = %d  , s_clk = %b , s_reset = %b",s_count,s_clk,s_rst);
end

endmodule


