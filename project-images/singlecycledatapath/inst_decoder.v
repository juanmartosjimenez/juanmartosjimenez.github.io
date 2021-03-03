`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2020 01:25:02 AM
// Design Name: 
// Module Name: lab6
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder(instruction, RegWrite, RegDst, Instr_i, ALUSrc1, ALUSrc2, ALUOp, MemWrite, opcode, MemToReg, rs_addr, rt_addr, rd_addr);
input [15:0] instruction;
output RegWrite, RegDst;
output [7:0] Instr_i;
output ALUSrc1, ALUSrc2;
output [2:0] ALUOp;
output MemWrite;
output [3:0] opcode;
output MemToReg;
output [1:0] rs_addr;
output [1:0] rt_addr;
output [1:0] rd_addr;


reg RegWrite, RegDst; 
reg [7:0] Instr_i; 
reg ALUSrc1, ALUSrc2; 
reg [2:0] ALUOp; 
reg MemWrite; 
reg [3:0] opcode;// = instruction[15:12]; 
reg MemToReg; 
reg [1:0] rs_addr;//instruction[11:10];
reg [1:0] rt_addr;//= instruction[9:8];
reg [1:0] rd_addr;// = instruction[7:6];

always @ (instruction or opcode) begin
opcode = instruction[15:12];
if  (opcode == 4'b0000)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b1;
ALUOp = 3'b000;
MemWrite = 1'b0;
MemToReg = 1'b1;
rd_addr = 2'b0;
Instr_i = instruction[7:0];
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];

end

else if (opcode == 4'b0001)
begin 
 RegDst = 1'b1;
 RegWrite = 1'b0;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b1;
ALUOp = 3'b000;
MemWrite = 1'b1;
MemToReg = 1'b0;
rd_addr = 2'b0;
Instr_i = instruction[7:0];
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];

end 

else if (opcode == 4'b0010)
begin 
 RegDst = 1'b1;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b0;
ALUOp = 3'b000;
MemWrite = 1'b0;
MemToReg = 1'b0;
Instr_i = 8'b0;
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];
rd_addr = instruction[7:6];

end 

else if (opcode == 4'b0011)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b1;
ALUOp = 3'b000;
MemWrite = 1'b0;
MemToReg = 1'b0;
rd_addr = 2'b0;
Instr_i = instruction[7:0];
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];

end 

else if (opcode == 4'b0100)
begin 
 RegDst = 1'b1;
 RegWrite = 1'b1;
ALUSrc1 = 1'b1;
ALUSrc2 = 1'b0;
ALUOp = 3'b001;
MemWrite = 1'b0;
MemToReg = 1'b0;
rs_addr = 2'b0;
Instr_i = 8'b0;
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];
rd_addr = instruction[7:6];

end 

else if (opcode == 4'b0101)
begin 
 RegDst = 1'b1;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b0;
ALUOp = 3'b010;
MemWrite = 1'b0;
MemToReg = 1'b0;
Instr_i = 8'b0;
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];
rd_addr = instruction[7:6];

end 

else if (opcode == 4'b0110)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b1;
ALUOp = 3'b010;
MemWrite = 1'b0;
MemToReg = 1'b0;
rd_addr = 2'b0;
Instr_i = instruction[7:0];
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];

end 

else if (opcode == 4'b0111)
begin 
 RegDst = 1'b1;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b0;
ALUOp = 3'b011;
MemWrite = 1'b0;
MemToReg = 1'b0;
Instr_i = 8'b0;
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];
rd_addr = instruction[7:6];

end 

else if (opcode == 4'b1000)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b1;
ALUOp = 3'b011;
MemWrite = 1'b0;
MemToReg = 1'b0;
rd_addr = 2'b0;
Instr_i = instruction[7:0];
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];

end 

else if (opcode == 4'b1001)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b1;
ALUOp = 3'b100;
MemWrite = 1'b0;
MemToReg = 1'b0;
rd_addr = 2'b0;
Instr_i = instruction[7:0];
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];

end 

else if (opcode == 4'b1010)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b1;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b1;
ALUOp = 3'b101;
MemWrite = 1'b0;
MemToReg = 1'b0;
rd_addr = 2'b0;
Instr_i = instruction[7:0];
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];

end 

else if (opcode == 4'b1011)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b0;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b0;
ALUOp = 3'b110;
MemWrite = 1'b0;
MemToReg = 1'b0;
Instr_i = 8'b0;
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];
rd_addr = instruction[7:6];

end 

else if (opcode == 4'b1100)
begin 
 RegDst = 1'b0;
 RegWrite = 1'b0;
ALUSrc1 = 1'b0;
ALUSrc2 = 1'b0;
ALUOp = 3'b111;
MemWrite = 1'b0;
MemToReg = 1'b0;
Instr_i = 8'b0;
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];
rd_addr = instruction[7:6];

end 

else if (opcode == 4'b1101)
begin 
 RegDst = 1'b1;
 RegWrite = 1'b1;
ALUSrc1 = 1'b1;
ALUSrc2 = 1'b0;
ALUOp = 3'b010;
MemWrite = 1'b0;
MemToReg = 1'b0;
rs_addr = 2'b0;
Instr_i = 8'b0;
rt_addr = instruction[9:8];
rs_addr = instruction[11:10];
rd_addr = instruction[7:6];
end 
end
endmodule
