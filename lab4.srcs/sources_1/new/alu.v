`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/19 09:52:22
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] eqa,
    input [31:0] b,
    input [3:0] ealuc,
    output reg [31:0] r
    );
    
    always @(*) begin
        if (ealuc == 4'b0010)
        begin
            r = eqa + b;
        end
    end
endmodule
