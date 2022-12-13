`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 10:07:41 AM
// Design Name: 
// Module Name: movement
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


module movement(clk, keys, state); 
  input clk; 
  input [3:0] keys; 
  output [2:0] state; 
  reg [2:0] state = 0; 
  reg [2:0] next; 
   
  parameter up = 3'b0; 
  parameter down = 3'b10;  
  parameter left = 3'b100;
  parameter right = 3'b110; 
   
  always @(posedge clk) 
    begin 
    state <= next; 
  end 
  always @(keys or state) 
      begin 
       case (keys) 
         4'b0: next[0] = 0; 
         4'b1: if (state == up) next = up; 
          else if (state != up) next = up; 
         4'b10: if (state == down) next = down; 
         else if (state != down) next = down; 
         4'b100: if (state == left) next = left; 
         else if (state != left) next = left; 
         4'b1000: if (state == right) next = right; 
         else if (state != right)next = right;  
       endcase 
      end 
endmodule 