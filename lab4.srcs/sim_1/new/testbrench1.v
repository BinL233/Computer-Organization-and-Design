`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/19 11:54:19
// Design Name: 
// Module Name: testbrench1
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


module testbrench1(

    );
    
    reg clk;
    wire [31:0] pc;
    wire [31:0] dinstOut;
    wire ewreg;
    wire em2reg;
    wire ewmem;
    wire [3:0] ealuc;
    wire ealuimm;
    wire [4:0] edestReg;
    wire [31:0] eqa;
    wire [31:0] eqb;
    wire [31:0] eimm32;
    wire mwreg;
    wire mm2reg;
    wire mwmem;
    wire [4:0] mdestReg;
    wire [31:0] mr;
    wire [31:0] mqb;
    wire wwreg;
    wire wm2reg;
    wire [4:0] wdestReg;
    wire [31:0] wr;
    wire [31:0] wdo;
    
    Datapath datapath(clk, pc, dinstOut, ewreg, em2reg, ewmem, ealuc, ealuimm, edestReg, eqa, eqb, eimm32, mwreg, mm2reg, mwmem, mdestReg, mr, mqb, wwreg, wm2reg, wdestReg, wr, wdo);
    
    initial begin
        clk = 0;
    end
    
    always begin
        #5;
        clk = ~clk;
        
    end
endmodule
