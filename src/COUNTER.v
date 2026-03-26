`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 10:38:59 AM
// Design Name: 
// Module Name: COUNTER
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


module COUNTER (cnt,dIn,ldC,dec,clk);
    input [15:0] dIn;
    input ldC,dec,clk;
    output reg [15:0] cnt;
    
    always @(posedge clk)
        if (ldC)
            cnt <= dIn;
        else if (dec)
            cnt <= cnt - 1;
endmodule
