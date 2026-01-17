`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2025 07:58:44 PM
// Design Name: 
// Module Name: pc
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
module pc(
    input clk, rst,
    input [`INSTRUCTION_SIZE - 1 : 0] in,
    output reg [`INSTRUCTION_SIZE - 1 : 0] out
);
always @(posedge clk) begin
    if (rst) begin
        out <= 32'b0;
    end else begin
        out <= in;
    end
end
endmodule