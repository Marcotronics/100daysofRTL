module mux(
	input reg [7:0] a,
	input reg [7:0] b,
	input reg [7:0] c,
	input reg [7:0] d,
	input reg [1:0] sel,
	output reg [7:0] f
);	
	//Using case statement
	always @(a,b,c,d,sel) begin
		case(sel)
			2'b00: f = a; 
			2'b01: f = b;
			2'b10: f = c;
			2'b11: f = d;
			default: f = 8'b0;
		endcase
	end
	
endmodule

