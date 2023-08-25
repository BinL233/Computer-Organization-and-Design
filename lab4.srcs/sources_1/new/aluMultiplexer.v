`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/19 09:49:04
// Design Name: 
// Module Name: aluMultiplexer
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


module aluMultiplexer(
    input [31:0] eqb,
    input [31:0] eimm32,
    input ealuimm,
    output reg [31:0] b

    );
    
    always @(*) begin
        if(ealuimm == 0)
        begin
            b = eqb;
        end
        
        else
        begin
            b = eimm32;
        end
    end
endmodule
