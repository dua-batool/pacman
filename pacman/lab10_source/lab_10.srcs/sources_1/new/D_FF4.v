`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 12:57:04 AM
// Design Name: 
// Module Name: D_FF4
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


module D_FF4(
    input [3:0] inp
    );
    wire [3:0] d_flip;
    D_FF u1 (inp[0], d_flip[0]);
    D_FF u2 (inp[1], d_flip[1]);
    D_FF u3 (inp[2], d_flip[2]);
    D_FF u4 (inp[3], d_flip[3]);
endmodule
