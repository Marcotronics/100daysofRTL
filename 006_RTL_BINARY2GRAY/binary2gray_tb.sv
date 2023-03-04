module binary2gray_tb();

logic [3:0] s_a;
logic [3:0] s_q;

binary2gray uut(.a(s_a),.q(s_q));

initial begin
    for(int i=0;i<10;i++) begin
        s_a = $random%15;
        #10;
    end
end

initial begin
    $monitor("Binary code s_a = %b , Gray code s_q = %b",s_a,s_q);
end
endmodule


