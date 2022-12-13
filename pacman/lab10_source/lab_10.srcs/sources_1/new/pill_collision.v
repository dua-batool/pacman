`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 09:29:08 AM
// Design Name: 
// Module Name: pill_collision
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


module pill_collision(
    input clk,
    input p_x,
    input p_y,
    output [5:0]collision
//    output won
    );
    reg [5:0] collision =0;
//    reg won;
    always @(posedge clk)
    begin
    if ((((p_x-27)**2 + (p_y-300)**2)) <= 225)
    begin
    collision = 1;
//    won =1;
    end
    end
endmodule
