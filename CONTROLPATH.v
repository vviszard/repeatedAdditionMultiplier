`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 11:54:00 AM
// Design Name: 
// Module Name: CONTROLPATH
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


module CONTROLPATH (done,ldA,ldB,ldP,clrP,decB,eqz,start,dIn,clk);
    input [15:0] dIn;
    input eqz,clk,start;
    output reg done,ldA,ldB,ldP,clrP,decB;
    
    reg [2:0] state;
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
    
    always @(posedge clk)
        begin
            case (state)
                S0: if (start)
                        state <= S1;
                S1: state <= S2;
                S2: state <= S3;
                S3: if (eqz)
                        state <= S4;
                    else
                        state <= S3;
                S4: state <= S4;
                default: state <= S1;
            endcase
        end
    always @(state)
        begin
            case (state)
                S0: begin
                        ldA = 0;
                        ldB = 0;
                        ldP = 0;
                        clrP = 0;
                        decB = 0;
                    end
                S1: begin
                        ldA = 1;
                    end
                S2: begin
                        ldA = 0;
                        ldB = 1;
                        clrP = 1;
                    end
                S3: begin
                        ldB = 0;
                        ldP = 1;
                        clrP = 0;
                        decB = 1;
                    end
                S4: begin
                        done = 1;
                        ldP = 0;
                        decB = 0;
                    end
                default: begin
                        ldA = 0;
                        ldB = 0;
                        ldP = 0;
                        clrP = 0;
                        decB = 0;
                    end
            endcase
        end
endmodule