module piso_tb();
logic s_clk;
logic s_rst;
logic [7:0] s_a_tb;
logic s_load;
logic s_q;

piso uut(.clk(s_clk), .rst(s_rst), .a(s_a_tb), .load(s_load), .q(s_q));

initial begin
    s_clk = 1'b0;
    forever #5 s_clk = ~s_clk;
end

initial begin
    s_a_tb = 8'h00;
    s_q = 8'h00;
    s_rst = 1'b0;
    s_load =  1'b0;
    #5  s_rst = 1'b1;
    #15 s_rst = 1'b0;
    #10 s_load =  1'b1;
    #10 s_load =  1'b0;
    #90 s_load =  1'b1;
    #10 s_load =  1'b0;
    #90 s_load =  1'b1;
    #10 s_load =  1'b0;
end

initial begin
    #20
    @(posedge s_clk)
    s_a_tb <= $urandom_range(0, 8'hFF);
    #100
    @(posedge s_clk)
    s_a_tb <= $urandom_range(0, 8'hFF);
    #100
    @(posedge s_clk)
    s_a_tb <= $urandom_range(0, 8'hFF);
end

initial begin
    $monitor("s_a_tb= %b, s_load = %b, s_rst = %b ,s_q = %b  ",s_a_tb,s_load,s_rst,s_q);
end

endmodule


