`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2022 18:04:19
// Design Name: 
// Module Name: counter_test_v2
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


module counter_test_v2();
reg clk,reset;
wire [3:0] count;

counter dut(clk,reset,count);
initial 
begin
    clk = 0;
    reset = 1;
    #20 reset = 0;
end

always #5 clk = ~clk;

endmodule
