`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 06:11:53 PM
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


module counter(output [2:0]Q, input CLK);
wire [2:0]Qnot;
wire [2:0]T;

assign T[2] = Q[1]&Q[0];
assign T[1] = Qnot[1]|Q[0];
assign T[0] = Q[2]|(Q[1]&Qnot[0]);


TFF tff2(Q[2], Qnot[2], T[2], CLK);
TFF tff1(Q[1], Qnot[1], T[1], CLK);
TFF tff0(Q[0], Qnot[0], T[0], CLK);

endmodule
