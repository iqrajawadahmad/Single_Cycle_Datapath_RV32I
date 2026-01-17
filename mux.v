`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 07:58:06 PM
// Design Name: 
// Module Name: mux
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
module mux(
    input sel, 
    input [`INSTRUCTION_SIZE-1:0] in0, 
    input [`INSTRUCTION_SIZE-1:0] in1,  
    output [`INSTRUCTION_SIZE-1:0] out
);
    assign out = (sel) ? in1 : in0;
endmodule