`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 07:58:40
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [5:0] op,
    input [5:0] func,
    output reg wreg,
    output reg m2reg,
    output reg wmem,
    output reg [3:0] aluc,
    output reg aluimm,
    output reg regrt

    );
    
    always @(*) begin
        case (op)
            6'b000000:  //r-type
            begin
                case (func)
                    6'b100000:  //add
                    begin
                        wreg = 1;
                        m2reg = 0;
                        wmem = 0;
                        aluc = 4'b0010;
                        aluimm = 0;
                        regrt = 0;
                    end
                endcase
            end 
            6'b100011: //LW 
            begin
                wreg = 1;
                m2reg = 1;
                wmem = 0;
                aluc = 4'b0010;
                aluimm = 1;
                regrt = 1;
            end
        endcase
    end
endmodule
