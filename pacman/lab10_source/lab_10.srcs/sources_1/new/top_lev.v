`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 01:10:11 AM
// Design Name: 
// Module Name: top_lev
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


module top_lev(
    input [3:0] current, 
    input left,                                                                                                                                                                                                        
    input reset
    );
    wire [3:0] next_out;
    wire [3:0] dflip_out;
    wire [5:0] end_out;
    wire [3:0] next_end;
    next_state n (current, left, reset, next_out);
    D_FF4 d (next_out, dflip_out);
    next_state n2 (dflip_out, next_end);
    output_logic o(dflip_out, end_out);
endmodule
