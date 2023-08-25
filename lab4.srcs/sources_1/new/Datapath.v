`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/05 10:00:13
// Design Name: 
// Module Name: Datapath
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


module Datapath(
    input clk,
    output reg [31:0] pc,
    output reg [31:0]dinstOut,
    output reg ewreg,
    output reg em2reg,
    output reg ewmem,
    output reg [3:0] ealuc,
    output reg ealuimm,
    output reg [4:0] edestReg,
    output reg [31:0] eqa,
    output reg [31:0] eqb,
    output reg [31:0] eimm32,
    output reg mwreg,
    output reg mm2reg,
    output reg mwmem,
    output reg [4:0] mdestReg,
    output reg [31:0] mr,
    output reg [31:0] mqb,
    output reg wwreg,
    output reg wm2reg,
    output reg [4:0] wdestReg,
    output reg [31:0] wr,
    output reg [31:0] wdo
    );
    wire [31:0] nextPc;
    wire [31:0] pc;
    PC Pc(nextPc, clk, pc);
    
    wire [31:0]instOut;
    InstructionMemory mem(pc, instOut);
    
    PcAdder adder(pc, nextPc);
    
    wire [31:0] dinstOut;
    IFIDPipelineReg ifid(instOut, clk, dinstOut);
    
    wire [5:0] op = dinstOut[31:26];
    wire [5:0] func = dinstOut[5:0];
    wire wreg;
    wire m2reg;
    wire wmem;
    wire [3:0] aluc;
    wire aluimm;
    wire regrt;
    ControlUnit cu(op, func, wreg, m2reg, wmem, aluc, aluimm, regrt);
    
    wire [4:0] rt = dinstOut[20:16];
    wire [4:0] rd = dinstOut[15:11];
    wire [4:0] destReg;
    RegrtMultiplexer rm(rt, rd, regrt, destReg);
    
    wire [4:0] rs = dinstOut[25:21];
    wire [31:0] qa;
    wire [31:0] qb;
    wire [31:0] wbData;
    RegisterFile rf(rs, rt, wdestReg, wbData, wwreg, clk, qa, qb);
    
    wire [15:0] imm = dinstOut[15:0];
    wire [31:0] imm32;
    ImmediateExtender ie(imm, imm32);
    
    wire ewreg;
    wire em2reg;
    wire ewmem;
    wire [3:0] ealuc;
    wire ealuimm;
    wire [4:0] edestReg;
    wire [31:0] eqa;
    wire [31:0] eqb;
    wire [31:0] eimm32;
    IDEXEPipelineReg idexe(wreg, m2reg, wmem, aluc, aluimm, destReg, qa, qb, imm32, clk, ewreg, em2reg, ewmem, ealuc, ealuimm, edestReg, eqa, eqb, eimm32);
    
    wire [31:0] b;
    aluMultiplexer alumult(eqb, eimm32, ealuimm, b);
    
    wire [31:0] r;
    alu alu(eqa, b, ealuc, r);
    
    wire mwreg;
    wire mm2reg;
    wire mwmem;
    wire mdestReg;
    wire [4:0] mdestReg;
    wire [31:0] mr;
    wire [31:0] mqb;
    exememPipelineReg exemem(ewreg, em2reg, ewmem, edestReg, r, eqb, clk, mwreg, mm2reg, mwmem, mdestReg, mr, mqb);

    wire [31:0] mdo;
    dataMemory datamemory(mr, mqb, memem, clk, mdo);
    
    wire wwreg;
    wire wm2reg;
    wire [4:0] wdestReg;
    wire [31:0] wr;
    wire [31:0] wdo;
    memwbPipelineReg memwb(mwreg, mm2reg, mdestReg, mr, mdo, clk, wwreg, wm2reg, wdestReg, wr, wdo);
    
    WbMux wbmux(wr,wdo, wm2reg, wbData);
    
endmodule
