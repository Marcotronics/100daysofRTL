module binary2gray(
    input logic [3:0] a,
    output logic [3:0] q
);
logic [2:0] q_s;

assign  q[3] = a[3];
assign  q[2:0] = q_s[2:0];

always@(*) begin
    for(int i=0; i<3;i++) begin
        q_s[i] = a[i] ^ a[i+1]; 
    end
end

endmodule


