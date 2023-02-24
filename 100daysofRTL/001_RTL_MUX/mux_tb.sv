module mux_tb();
	
	reg  [7:0] s_a;
	reg  [7:0] s_b;
	reg  [7:0] s_c;
	reg  [7:0] s_d;
	reg  [7:0] s_f;
	reg  [1:0]s_sel;
	
	mux uut(.a(s_a),.b(s_b),.c(s_c),.d(s_d),.sel(s_sel),.f(s_f));
	
	initial begin
		for( int i=0; i<15;i++ ) begin
			//Use of $urandom_range function to generate pseudorandom numbers for s_a, s_b, s_c, and s_d.
			s_a = $urandom_range(0, 8'hFF); 
			s_b = $urandom_range(0, 8'hFF);
			s_c = $urandom_range(0, 8'hFF);
			s_d = $urandom_range(0, 8'hFF);
			// module 4 of a random number for  s_sel
			s_sel = $random %4;
			//wait 5 times
			#5;  
		end
	end 
	
	initial begin
		// Function to print out changes
		$monitor("s_a = %d  , s_b = %d , s_c = %d ,  s_d = %d , s_sel = %b, s_f = %d",s_a,s_b,s_c,s_d,s_sel,s_f);
	end
endmodule

