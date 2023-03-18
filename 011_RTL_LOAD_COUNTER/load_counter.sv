module load_counter(
    input logic clk,
    input logic rst,
    input logic load,
    input logic [3:0] data,
    output logic [3:0] q
);
logic [3:0] s_data;
logic [3:0] s_q;
always_ff @(posedge clk or posedge rst) begin
    if(rst) 
        s_q <= 4'h0;
    else 
        if(load) 
            s_data <= data; 
end
always_ff @(posedge clk or posedge rst) begin
    if(rst)
        s_q <= 4'h0;
    else
        if(load) 
            s_q <= data;
        else 
            if(s_q == 4'hF) 
                s_q <= s_data;
            else
                s_q <= s_q + 4'h1;
end

assign q = s_q;

endmodule


