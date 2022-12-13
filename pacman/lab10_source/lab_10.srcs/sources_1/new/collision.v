`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 12:23:00 PM
// Design Name: 
// Module Name: collision
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


module collision(
    input [9:0]x1,
    input [9:0]x2,
    input [9:0]x3,
    input [9:0]y1,
    input [9:0]y2,
    input [9:0]y3,
    input clk,
//    input/ll,
    output collided
    );
    reg collided=0;
//    parameter coll = (x1-x2)<=20 & (x1-x2)>=20;
//    wire collided;
//    assign collided = (x1-x2)<=20 & (x1-x2)>=20;

//    if ((((x1-x2)**2 + (y1-y2)**2)**0.5) >= 22)
    
    always @ (posedge clk)
    begin 
    if (((((x1-x2)**2 + (y1-y2)**2)) <= 484) || ((((x1-x3)**2 + (y1-y3)**2)) <= 484))
//    ((((x1-x2)**2 + (y1-y2)**2)**0.5) <= 22) 
//    if ((((x1-x2)<=25) && ((y1-y2)<=25)) || (((x1-x3)<=25)  && ((y1-y3)<=25)))
    begin
    collided =1;
    end
//    else 
//    collided = 0;
    end
    //(x1 == x2 & y1 == y2);
//    (((x1+10) <= x2 || (x1-10) >= x2) & (y1+10) <= y2 || (y1-10) >= y2))
endmodule
