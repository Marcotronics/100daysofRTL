module lfsr(
    input logic clk,
    input logic rst,
    output logic [3:0] q
);

logic [3:0] sq;

assign q = sq;

always_ff @(posedge clk or posedge rst) begin
    if(rst) begin
        sq <= 4'hf;
    end
    else begin
        sq[0] <= sq[1] ^ sq[0];
        sq[3:1] <= sq[2:0];
    end
end

endmodule


