module sr_tb();
logic s_a;
logic s_clk;
logic s_rst;
logic [7:0] s_q;
sr uut (.a(s_a), .clk(s_clk), .rst(s_rst), .q(s_q));

initial begin
    s_clk=1'b0;
    forever #5 s_clk= ~s_clk;
end

initial begin
    s_rst<=1'b0;
    #90
    s_rst<=1'b1;
    #15
    s_rst<=1'b0;
end

initial begin
    s_a <=1'b0;
    s_q <=8'hff;
    #50
    repeat (10) @(posedge s_clk)
        s_a <= $random%2;
    repeat (8) @(posedge s_clk)
        s_a <= $random%2;
end

initial begin
    $monitor("s_a = %b , s_rst = %b , s_q = %b ",s_a,s_rst,s_q);
end

endmodule



