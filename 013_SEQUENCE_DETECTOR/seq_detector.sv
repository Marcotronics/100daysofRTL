module seqdet_ol (
    input logic clk,
    input logic rst,
    input logic data,
    output logic q
);

typedef enum {s0, s1, s2} t_state;
t_state state_reg, state_next;

always_ff @ (posedge clk or posedge rst) begin
        if (rst)
            state_reg <= s0;
        else
            state_reg <= state_next;
end

always_comb begin
    case (state_reg)
        s0: begin
            q = 1'b0;
            if(data)
                state_next = s1;
            else
                state_next = s0;
        end
        s1: begin
            q = 1'b0; 
            if(data)
                state_next = s1;
            else
                state_next = s2;
        end
        s2: begin
            if(data) begin
                state_next = s1;
                q = 1'b1;
            end
            else begin
                state_next = s0;
                q = 1'b0;
            end
        end    
        default: state_next = s0;
    endcase
end

endmodule

