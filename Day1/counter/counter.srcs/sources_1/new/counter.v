`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 17:16:52
// Design Name: 
// Module Name: counter
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


module counter(clk,reset,count);
 
input clk;
input reset;
output reg [3:0] count;
reg [25:0] clk_div; 

always @ (posedge clk)
    if (reset)
        begin
            count <= 4'b0000;
            clk_div <= 26'd0;
        end
    else
        clk_div <= clk_div + 1;
            
always @ (posedge clk_div[25])
    count <= count + 1;
        
endmodule
