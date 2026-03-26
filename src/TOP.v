`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 12:41:15 PM
// Design Name: 
// Module Name: TOP
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


module TOP (product,done,dIn,start,clk);
    input [15:0] dIn;
    input start,clk;
    output done;
    output [15:0] product;
    
    wire ldA,ldB,ldP,clrP,decB,eqz;
    
    DATAPATH dPath(.product(product), .eqz(eqz), .ldA(ldA), .ldB(ldB), .ldP(ldP),.clrP(clrP), .decB(decB), .dIn(dIn), .clk(clk));
    
    CONTROLPATH cPath (.done(done), .ldA(ldA), .ldB(ldB), .ldP(ldP), .clrP(clrP), .decB(decB), .eqz(eqz), .start(start), .dIn(dIn), .clk(clk));
endmodule
