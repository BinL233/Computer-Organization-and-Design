`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 07:19:52
// Design Name: 
// Module Name: PcAdder
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


module PcAdder(
    input [31:0] pc,
    output reg [31:0] nextPc

    );
    initial begin
        nextPc = 100;
    end
    always @(*) begin
        nextPc = pc + 4;
    end
endmodule
