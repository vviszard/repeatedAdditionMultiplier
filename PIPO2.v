`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 10:09:12 AM
// Design Name: 
// Module Name: PIPO2
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


module PIPO2(dOut,dIn,clr,ldP,clk);
    input clr,ldP,clk;
    input [15:0] dIn;
    output reg [15:0] dOut;
    
    always @(posedge clk)
        if (clr)
            dOut <= 16'b0;
        else
            if (ldP)
                dOut <= dIn;
endmodule
