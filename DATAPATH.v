`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 11:01:29 AM
// Design Name: 
// Module Name: DATAPATH
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


module DATAPATH (product,eqz,ldA,ldB,ldP,clrP,decB,dIn,clk);
    input ldA,ldB,ldP,clrP,decB,clk;
    input [15:0] dIn;
    output eqz;
    output [15:0] product;
    wire [15:0] bus,X,Y,Z,bOut;
    assign bus = dIn;
    assign product = Y;
    
    PIPO1 A (.dOut(X), .dIn(bus), .ldA(ldA), .clk(clk));
    PIPO2 P (.dOut(Y), .dIn(Z), .clr(clrP), .ldP(ldP), .clk(clk));
    ADDER ADD (.sum(Z), .in1(X), .in2(Y));
    COUNTER B (.cnt(bOut), .dIn(bus), .ldC(ldB), .dec(decB), .clk(clk));
    COMP CMP (.eqz(eqz), .dIn(bOut));
endmodule
