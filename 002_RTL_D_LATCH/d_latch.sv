module d_latch(
	input logic d,
	input logic en,
	input logic rst,
	output logic q
);

always_latch begin
	if(~rst) begin
		q <= 1'b0;
	end
	else if (en == 1) begin
		q <= d;
	end 
end
endmodule


