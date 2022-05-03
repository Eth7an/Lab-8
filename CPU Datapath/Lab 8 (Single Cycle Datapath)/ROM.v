module ROM(address, out, enable);

	input [31:0] address;
	input enable;
	output [31:0] out;
	
	reg [31:0] out;
		
	always @(*) begin
	
		if(enable) begin
		
			case(address)
				32'h0 : out = 32'b000000000011_00000_000_00001_0010011; // I type add x0 and 3 to x1
				32'h4 : out = 32'b000000000111_00000_000_00010_0010011; // I type add x0 and 7 to x2
				32'h8 : out = 32'b0000000_00001_00010_000_00011_0110011; // R type add x1 and x2 to x3
				32'hc : out = 32'b0000000_00000_00011_000_00100_0110011; // R type add x0 and x3 to x4
				32'h10 : out = 32'b0000000_00100_00010_010_00001_0100011; // S type store x4 in RAM[x2+1]
				32'h14 : out = 32'b000000000001_00010_010_00101_0000011; // I type load RAM[x2+1] in x5
				32'h18 : out = 32'b000000000101_00000_000_00001_0010011; // I type add x0 and 5 to x1
				32'h1c : out = 32'b0000000_00000_00101_000_00110_0110011; // R type add x0 and x5 to x6
				32'h20 : out = 32'b000000000101_00000_000_00001_0010011; // I type add x0 and 5 to x1
			endcase
		end else
			out = 32'bz;
		
	end

endmodule
