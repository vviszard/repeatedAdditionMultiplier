`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2026 01:13:23 PM
// Design Name: 
// Module Name: repAddTestbench
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


module repAddTestbench();
    reg [15:0] inData;
    reg clk,start;
    wire done;
    wire [15:0] product;
    
    TOP DUT(.product(product), .done(done), .dIn(inData), .start(start), .clk(clk));
    
    initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
    initial
        begin
            $dumpfile("repAdd.vcd");
            $dumpvars(0,repAddTestbench);
            
            start = 1;
            inData = 16'd5;
            #10 inData = 16'd4;
            start = 0;
            wait(done);
            #10;
            $display("RESULT: %d", product);
            $finish;
        end    
endmodule