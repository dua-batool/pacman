`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 12:12:17 AM
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input up,
    input down, 
    input left, 
    input right,
//    input [3:0]keys,
output h_sync,v_sync,
output [3:0] red,green,blue
    );
    //reg [3:0]sw;
    wire clk_d, v_trig, video_on;
    wire [9:0] h_count;
    wire[9:0] v_count;
    wire[9:0] x_loc;
    wire[9:0] y_loc;
//    wire [3:0]keys;
//    wire [2:0]state;
    wire [9:0]g2_x;
    wire [9:0]g2_y;
    wire [9:0]g_x;
    wire [9:0]g_y;
    wire [9:0]p_x;
    wire [9:0]p_y;
    wire lost;
//    wire won;
    wire [5:0] pcollision;
//    wire [5:0] won_c;
//    wire [9:0]g2_x;
//    wire [9:0]g2_y;
    wire animate;
    clock_divider cd(clk,clk_d);
    hcounter hc(clk_d,h_count,v_trig);
    v_counter vc(clk_d,v_trig,v_count);
//    ghost g(clk_d, g_x, g_y);
//    movement m(clk_d, keys, state);
//    state_to_coordinates stc(clk_d, state, p_x, p_y);
    vga_sync vgas(h_count,v_count,x_loc,y_loc,h_sync,v_sync,video_on, animate);
    ghost g(animate, g_x, g_y);
    ghost2 g2(animate, g2_x, g2_y);
    Pacman_Movement pm(animate,p_x, p_y, up, down, left, right,g_x,g_y,pcollision);
    collision col(p_x, g_x,g2_x, p_y, g_y,g2_y,clk, lost);
//    pill_collision p(clk,p_x, p_y,pcollision);
    pixel_gen pg(clk_d,x_loc,y_loc,p_x,p_y,g_x, g_y,g2_x,g2_y,video_on,pcollision, lost,red,green,blue);
//    pixel_gen pg(clk_d,x_loc,y_loc,p_x,p_y,g_x,g_y,video_on,0,0,red,green,blue);
//9'b101000000,9'b001110010
//9'b101000000,9'b100101100
endmodule