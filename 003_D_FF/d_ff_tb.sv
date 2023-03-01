module d_ff_tb();
logic s_data;
logic s_clk;
logic s_rst;
logic s_q;

d_ff uut(.d(s_data),.clk(s_clk),.rst(s_rst),.q(s_q));

initial begin
    s_clk=1'b0;
    forever #5 s_clk= ~s_clk;
end
initial begin
    s_rst=1'b1;
    s_data=1'b0;
    #20;
    s_data=1'b1;
    #20;
    s_data=1'b0;
    #20;
    s_data=1'b1;
    #20;
    s_data=1'b0;
    #20;
    $stop;
end 

initial begin
    // Function to print out changes
    $monitor("s_data = %b  , s_clk = %b , s_reset = %b , s_q = %b",s_data,s_clk,s_rst,s_q);
end
endmodule

