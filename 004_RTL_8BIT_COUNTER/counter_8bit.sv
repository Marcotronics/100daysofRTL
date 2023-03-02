module counter_8bit(
    input logic clk,
    output logic [7:0] count,
    input logic rst
);

always_ff @(posedge clk) begin
    if(~rst) begin
       count <= 8'b0; 
    end
    else if(count == 8'b11111111 ) begin
        count <= 8'b0;
    end
    else begin
        count <= count + 1'b1;
    end
end

endmodule


