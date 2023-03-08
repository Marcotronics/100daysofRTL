module sr(
    input logic a,
    input logic clk,
    input logic rst,
    output logic [7:0] q
);

logic [7:0] sq;

assign q = sq;

always_ff @(posedge clk) begin
    if (rst) begin
        sq <=8'h00;
    end 
    else begin
        sq[0] <= a;
        sq[7:1] <= sq[6:0];
    end
end

endmodule



