module j_counter(
    input logic clk,
    input logic rst,
    output logic [3:0] count
);
  
always@(posedge clk or posedge rst) begin
    if(rst)
        count <= 4'h0;
    else 
        count <={~count[0],count[3:1]};
end

endmodule


