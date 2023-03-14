module piso(
    input logic clk,
    input logic rst,
    input logic [7:0] a,
    input logic load,
    output logic q
);

logic [7:0] s_a;
logic s_q;

assign q = s_q;

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        s_q <= 8'hff;
    end
    else begin
        if(load) begin
            s_a <= a;
        end
        else begin
            s_a <= {s_a[6:0],1'b0};  
            s_q <= s_a[7];
        end        
    end
end

endmodule


