`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 07:57:30
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


module InstructionMemory(
    input [31:0] pc,
    output reg [31:0] instOut

    );
    reg [31:0] memory [0:63];
    initial begin
        memory[25] = {6'b100011, 5'b00001, 5'b00010, 16'd0};
        memory[26] = {6'b100011, 5'b00001, 5'b00011, 14'd4};
        memory[27] = {6'b100011, 5'b00001, 5'b00100, 16'd8};
        memory[28] = {6'b100011, 5'b00001, 5'b00101, 14'd12};
        memory[29] = {6'b000000, 5'b00010, 5'b00110, 5'b00110, 5'b00000, 6'b100000};
        
    end
    
    always @(*) begin
        instOut = memory[pc[7:2]];
    end
endmodule
