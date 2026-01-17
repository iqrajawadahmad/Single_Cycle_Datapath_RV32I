`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 07:46:02 PM
// Design Name: 
// Module Name: Adder
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
`include "RISCV_PKG.vh"
module adder(
    input [`INSTRUCTION_SIZE-1:0] in1,
    input [`INSTRUCTION_SIZE-1:0] in2,
    output [`INSTRUCTION_SIZE-1:0] out
);
    assign out = in1 + in2;

endmodule