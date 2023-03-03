module binary2onehot(
    input logic [2:0] a,
    output logic [7:0]  q
);

assign q = 1'b1 << a;

endmodule



