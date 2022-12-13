`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 02:08:00 AM
// Design Name: 
// Module Name: top_level
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


module top_level(
    input clk,
    output [9:0]h_count,
    output [9:0]v_count
    );
    wire clk_d;
    wire trig_v;
clock_divider u1(clk, clk_d);
hcounter u2 (clk_d, h_count, trig_v);
v_counter u3 (clk_d, trig_v, v_count);

endmodule
