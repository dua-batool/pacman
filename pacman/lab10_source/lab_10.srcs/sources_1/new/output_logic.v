`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 12:19:31 AM
// Design Name: 
// Module Name: output_logic
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


module output_logic(
    input [3:0] current,    //current[1] = Aleft and current[0] = Bleft and current[3] = Aright and current[2] = Bright
    output [5:0] out
    );
assign out [0] = current[0] || current[1];     //LA
assign out [1] = current[1];                   //LB
assign out [2] = current[0] && current[1];     //LC
assign out [3] = current[2] || current[3];     //RA
assign out [4] = current[3];                   //RB
assign out [5] = current[2] && current[3];     //RC
endmodule
