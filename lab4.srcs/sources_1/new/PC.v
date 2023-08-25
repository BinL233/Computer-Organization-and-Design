`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 07:19:52
// Design Name: 
// Module Name: PC
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


module PC(
    input [31:0] nextPc,
    input clock,
    output reg [31:0] pc
    );
    initial begin
        pc = 100;
    end
    
    always @(posedge clock) begin
        pc = nextPc;
    end

endmodule
