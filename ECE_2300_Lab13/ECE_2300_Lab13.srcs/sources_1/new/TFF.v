`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 05:21:16 PM
// Design Name: 
// Module Name: TFF
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


module TFF(Q, Qnot, T, CLK);
input CLK, T;
output Qnot;
output reg Q;

initial Q = 0;
assign Qnot = ~Q;

always @(posedge CLK)
    if(T==0)
        Q<=Q;
    else
        Q<=~Q;
endmodule