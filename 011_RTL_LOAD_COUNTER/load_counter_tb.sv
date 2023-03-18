module load_counter_tb();

logic tb_clk;
logic tb_rst;
logic tb_load;
logic [3:0] tb_data;
logic [3:0] tb_q;

load_counter uut(.clk(tb_clk), .rst(tb_rst), .load(tb_load), .data(tb_data), .q(tb_q));

initial begin
    tb_clk = 1'b0;
    forever #5 tb_clk = ~tb_clk;
end

initial begin
    tb_q = 8'h00;
    tb_rst = 1'b0;
    tb_load =  1'b0;
    #5  tb_rst = 1'b1;
    #15 tb_rst = 1'b0;
    #10 tb_load =  1'b1;
    #10 tb_load =  1'b0;
    #180 tb_load =  1'b1;
    #10 tb_load =  1'b0;
    #180 tb_load =  1'b1;
    #10 tb_load =  1'b0;
    #180 tb_load =  1'b1;
    #10 tb_load =  1'b0;
end

initial begin
    tb_data = $random%16;; 
    #180 tb_data = $random%16; 
    #180 tb_data = $random%16; 
    #180 tb_data = $random%16; 
    #180 tb_data = $random%16; 
    #180 tb_data = $random%16; 
end

initial begin
    $monitor("tb_data= %b, s_load = %b, s_rst = %b ,s_q = %b  ", tb_data, tb_load, tb_rst, tb_q);
end

endmodule

