`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 07:56:50
// Design Name: 
// Module Name: IFIDPipelineReg
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


module IFIDPipelineReg(
    input [31:0] instOut,
    input clock,
    output reg [31:0] dinstOut

    );
    
    always @(posedge clock) begin
        dinstOut = instOut;
    end
endmodule
