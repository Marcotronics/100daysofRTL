module binary2onehot_tb();

logic [2:0] s_a;
logic [7:0] s_q;

binary2onehot uut(.a(s_a),.q(s_q));

initial begin
    
    for(int i=0;i<9;i++) begin
        s_a = $random%8;
        #10;
    end
end

initial begin
    $monitor("s_a = %b , s_q = %b",  s_a,s_q);
end

endmodule


