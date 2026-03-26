`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 09:51:31 AM
// Design Name: 
// Module Name: PIPO1
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


module PIPO1(dOut,dIn,ldA,clk);
    input clk,ldA;
    input [15:0] dIn;
    output reg [15:0] dOut;
    
    always @(posedge clk)
        if (ldA)
            dOut <= dIn;
endmodule
