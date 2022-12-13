`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2022 11:25:26 AM
// Design Name: 
// Module Name: ghost2
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


module ghost2(
    input animate,         //
    output [9:0]x_pos,
    output [9:0]y_pos
    );
    reg [9:0]x_pos;
    reg [9:0]y_pos;
//    reg [9:0]x2_pos;
//    reg [9:0]y2_pos;
    reg [3:0] counter;
    reg [4:0]div =0;       //controls the speed of the ghost
    always @ (posedge animate)
    begin
    div <= div +2;
    end
    //#1000
    always @ (posedge div[3])
    begin
    
//    y2_pos = 9'b101100011;
//    if (x_pos == 9'b101000000)
//    x_pos <= 9'b101001001;
//    else 

    y_pos = 9'b101100011;
    x_pos <= x_pos + 10;

    
//    x2_pos <= x2_pos - 45;
//    if (counter < 15)
//    begin
//    #1000
//    counter<= counter -1;
    
//    end 
//    else if (counter == 15)
//    begin counter<=0;
//    end  
    end 
endmodule
