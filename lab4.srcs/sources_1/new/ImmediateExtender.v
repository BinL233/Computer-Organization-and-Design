`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 09:47:09
// Design Name: 
// Module Name: ImmediateExtender
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


module ImmediateExtender(
    input [15:0] imm,
    output reg [31:0] imm32

    );
    always @(*) begin
        imm32 <= {{16{imm[15]}},imm[15:0]};
    end    
endmodule
