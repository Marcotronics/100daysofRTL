module d_latch_tb();

logic s_data;
logic s_enable;
logic s_reset;
logic s_q;
logic [2:0] delay;
	
d_latch uut(.d(s_data),.en(s_enable),.rst(s_reset),.q(s_q));

initial begin
    s_enable = 1;
    s_reset = 1;
    for(int i=0; i<10;i++) begin
        delay = $random%8;
        s_data = $random%2;
        s_enable = ~s_enable;
        #(delay);
    end
end

initial begin
    // Function to print out changes
    $monitor("s_data = %b  , s_enable = %b , s_reset = %b , s_q = %b",s_data,s_enable,s_reset,s_q);
end


endmodule