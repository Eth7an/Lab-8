module Lab8_testbench();

	// Clock signal
	reg clk = 0;
	always
		#5 clk = ~clk;
		
	// Test control unit output registers
	reg rst;
	reg [1:0] immSel, regRW;
	reg [2:0] ALUop;
	reg ALUsrc, MRW, PCsrc, WB;
	
	// Test control unit input wires
	wire [31:0] instr;
	wire [1:0] status;
	
	// Test outputs
	wire [31:0] readRS1;
	wire [31:0] ALU1;
	wire [31:0] ALUout;
	wire [31:0] readRS2;
	wire [31:0] dataOut;
	reg [31:0] currentPC;
		
	// Device under test
	Lab8 DUT(clk, rst, instr, immSel, regRW, ALUsrc, status, ALUop, MRW, PCsrc, WB, readRS1, ALU1, ALUout, readRS2, dataOut);
	
	initial begin
		rst <= 0;
	end
	
	
	// Test program
	initial begin
	
		// PC 0x0 addi
		currentPC <= 32'h0;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 1;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 0;
		
		// PC 0x4 addi
		#5 currentPC <= 32'h4;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 1;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 0;
		
		// PC 0x8 add
		#10 currentPC <= 32'h8;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 0;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 0;
		
		// PC 0xC add
		#10 currentPC <= 32'hC;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 0;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 0;
		
		// PC 0x10 sw
		#10 currentPC <= 32'h10;
		immSel <= 2'b01;
		ALUop <= 3'b000;
		regRW <= 2'b10;
		ALUsrc <= 1;
		MRW <= 1;
		PCsrc <= 0;
		WB <= 0;
		
		// PC 0x14 lw
		#10 currentPC <= 32'h14;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 1;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 1;
		
		// PC 0x18 addi
		currentPC <= 32'h18;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 1;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 0;
		
		// PC 0x1c add
		#10 currentPC <= 32'h1c;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 0;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 0;
		
		// PC 0x20 addi
		currentPC <= 32'h18;
		immSel <= 2'b00;
		ALUop <= 3'b000;
		regRW <= 2'b11;
		ALUsrc <= 1;
		MRW <= 0;
		PCsrc <= 0;
		WB <= 0;
		
		#10 $stop;
	end

endmodule
