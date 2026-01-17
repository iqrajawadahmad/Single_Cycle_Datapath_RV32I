`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 07:54:55 PM
// Design Name: 
// Module Name: InstructionMemory
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


`include "RISCV_PKG.vh"
module InstructionMemory(   
    input [(`INSTRUCTION_SIZE-1):0] InstructionAddress,
    output reg [(`INSTRUCTION_SIZE-1):0] ReadInstruction
    );

    reg [7:0] Memory[0:(`MEM_SIZE - 1)]; // Byte-addressable memory with memory size in bytes

    initial begin   
        $readmemh("code.mem", Memory);
    end

    always @(*) begin
            ReadInstruction[7:0]   = Memory[InstructionAddress + 0];    //little-endian format: LSB at lowest address
            ReadInstruction[15:8]  = Memory[InstructionAddress + 1];
            ReadInstruction[23:16] = Memory[InstructionAddress + 2];
            ReadInstruction[31:24] = Memory[InstructionAddress + 3];   
    end 
endmodule