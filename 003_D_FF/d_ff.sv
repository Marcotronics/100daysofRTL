module d_ff(
    input logic clk,
    input logic d,
    input logic rst,
    output logic q
);

always_ff @(posedge clk) begin
    if(~rst) begin
        q <= 1'b0;
    end
    else begin
        q <= d;
    end
end

endmodule

