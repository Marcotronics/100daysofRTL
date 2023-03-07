module alu_tb();

logic [3:0] s_a;
logic [3:0] s_b;
logic [2:0] s_op;
logic [3:0] s_q;

alu uut(.a(s_a),.b(s_b),.op(s_op),.q(s_q));

initial begin
    for(int i=0;i<3;i++) begin
        for(int j=0;j<7;j++) begin
            s_a = $random % 15;
            s_b = $random % 15;
            s_op = 3'(j);
            #10;
        end
    end
end
initial begin
    $monitor("s_a = %b , s_b = %b s_op = %b , s_q = %b",  s_a, s_b, s_op, s_q);
end
endmodule

