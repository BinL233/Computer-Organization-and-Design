`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 07:19:52
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] wdestReg,
    input [31:0] wbData,
    input wwreg,
    input clock,
    output reg [31:0] qa,
    output reg [31:0] qb
    );
    reg [31:0] registers [31:0];
    integer i;
    initial begin
        for(i = 0; i <= 31; i= i + 1)
            begin
                registers[i] = 0;
            end
    end
    always @(negedge clock) begin
        if (wwreg == 1)
        begin
            registers[wdestReg] = wbData;
        end
    end
    
    always @(*) begin
        qa <= registers[rs];
        qb <= registers[rt];
    end
endmodule
