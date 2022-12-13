`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 12:11:27 AM
// Design Name: 
// Module Name: next_state
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


module next_state(
    input [3:0] current,    //current[1] = Aleft and current[0] = Bleft and current[3] = Aright and current[2] = Bright
    input left,                                                                                                                                                                                                        
    input reset,
    output [3:0] next    
    );
assign next[0] = (~current[0] && left && ~reset) + (current[1] && ~current[0] && ~reset);              //LBN
assign next[1] = (~current[1] && current[0] && ~reset) + (current[1] && ~current[0] && ~reset);        //LAN
assign next[2] = (~current[2] && left && ~reset) + (current[3] && ~current[2] && ~reset);              //RBN
assign next[3] = (~current[3] && current[2] && ~reset) + (current[3] && ~current[2] && ~reset);        //RAN
endmodule
