module Lab8(clk, rst, instr, immSel, regRW, ALUsrc, status, ALUop, MRW, PCsrc, WB, readRS1, ALU1, ALUout, readRS2, dataOut);

	// Processor inputs
	input clk, rst;
	
	// To control unit
	output [31:0] instr;
	input [1:0] immSel;
	input [1:0] regRW;
	input ALUsrc;
	output [1:0] status;
	input [2:0] ALUop;
	input MRW;
	input PCsrc;
	input WB;
	
	// Test outputs
	output [31:0] readRS1;
	output [31:0] readRS2;
	output [31:0] dataOut;
	output [31:0] ALU1;
	output [31:0] ALUout;

	// Internal wires
	wire PCsrc;
	wire [4:0] addressRD, addressRS1, addressRS2;
	wire [31:0] writeRD, readRS1, readRS2, ALU1, ALUout, dataOut, offset, immOut;


	PCID instructions(PCsrc, offset, clk, addressRD, addressRS1, addressRS2, instr);
	
	RegisterFile registers(writeRD, readRS1, readRS2, addressRD, addressRS1, addressRS2, regRW[0], regRW[1], clk, clearAll);
	
	immGen imm(instr, immSel, immOut);
	
	Mux op2Mux(readRS2, immOut, ALUsrc, ALU1);
	
	ALU logic(readRS1, ALU1, ALUop, ALUout, status);
	
	RAM memory(readRS2, dataOut, ALUout, MRW, clk);
	
	Mux outMux(ALUout, dataOut, WB, writeRD);


endmodule
