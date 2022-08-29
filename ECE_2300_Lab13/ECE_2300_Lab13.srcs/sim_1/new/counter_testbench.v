`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 09:19:30 PM
// Design Name: 
// Module Name: counter_testbench
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


module counter_testbench();
reg CLK;
wire [2:0]Q;

counter dut(Q, CLK);

initial begin
CLK=0;
forever #0.5 CLK=~CLK;
end

initial begin
end

endmodule
