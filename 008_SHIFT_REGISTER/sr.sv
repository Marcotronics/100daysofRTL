module sr(
    input logic a,
    input logic clk,
    input logic rst,
    output logic [7:0] q
);

logic [6:0] sq;

assign sq = q[6:0];

always_ff @(posedge clk) begin
    if (rst) begin
        q <=8'h00;
    end 
    else begin
        q[0] <= a;
        q[7:1] <= sq;
    end
end

endmodule



