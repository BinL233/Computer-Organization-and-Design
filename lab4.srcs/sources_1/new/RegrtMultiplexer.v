`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 08:49:41
// Design Name: 
// Module Name: RegrtMultiplexer
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


module RegrtMultiplexer(
    input [4:0] rt,
    input [4:0] rd,
    input regrt,
    output reg [4:0] destReg
    
    );
    
    always @(*) begin
        if(regrt == 0)
        begin
            destReg <= rd;
        end
        
        else
        begin
            destReg <= rt;
        end
    end
endmodule
