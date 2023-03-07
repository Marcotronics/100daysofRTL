module alu(
    input logic [3:0] a,
    input logic [3:0] b,
    input logic [2:0] op,
    output logic [3:0] q
);

always_comb begin
    case(op)
        3'b000: q = a + b;
        3'b001: q = a - b;
        3'b010: q = a * b;
        3'b011: q = a & b;
        3'b100: q = a | b;
        3'b101: q = ~a;
        3'b110: q = ~b;
        3'b111: q = a^b;
    endcase
end

endmodule


