`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 02:07:21 PM
// Design Name: 
// Module Name: Pacman_Movement
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


module Pacman_Movement(
 input animate,         //
    output [9:0]x_pos,
    output [9:0]y_pos,
    input up,
    input down,
    input left,
    input right,
    input [9:0] g_x,
    input [9:0] g_y,
    output [5:0]collision
//    output lost
    );
//    reg [5:0]won_counter=0;
//    reg [9:0]x_pos;
//    reg [9:0]y_pos;
//    reg [9:0]x2_pos;
//    reg [9:0]y2_pos;
//    reg [3:0] counter;
//    reg lost;
    reg[5:0] collision = 0;
    reg [4:0]div =0;    
    reg [9:0]x_pos = 9'b101000000;
    reg [9:0]y_pos = 9'b100101100;   //controls the speed of the ghost

//001110010
    always @ (posedge animate)
    begin

    div <= div + 2;
    end
    //#1000
    always @ (posedge div[3] )
    begin
//    if ((x_pos >=30 & x_pos <=610) || (y_pos >=30 & y_pos <=450))
//    begin
    if(left)
    begin
//    y_pos = 9'b100101100;
//    y2_pos = 9'b101100011;
//    if (x_pos == 9'b101000000)
//    x_pos <= 9'b101001001;
//    else 
//|| (x_pos > 180 && y_pos < 300 && y_pos > 200 && x_pos < 470)
    if (x_pos - 10 < 25 || (y_pos > 10 && y_pos < 80 && x_pos >= 295 && x_pos <= 340 ) || (y_pos < 470 && y_pos > 400 && x_pos >= 295 && x_pos <= 340 ))
    begin
    x_pos <= x_pos;
    end 
    else 
    x_pos <= x_pos - 10;
    end
    if(right)
    begin
    if(x_pos + 10 > 615 || (y_pos > 10 && y_pos < 80 && x_pos >= 290 && x_pos <= 345 ) ||  (y_pos < 470 && y_pos > 400 && x_pos >= 290 && x_pos <= 345 ) )
    begin
//    y_pos = 9'b100101100;
    x_pos <= x_pos;
    end
    else
    x_pos <= x_pos + 10;
    end
    if(down)
    begin
    if (y_pos + 10 > 455 || (x_pos > 220 && x_pos<420 && y_pos> 110 && y_pos < 140) || (x_pos > 220 && x_pos<420 && y_pos> 300 && y_pos < 330) || (x_pos > 80 && x_pos<240 && y_pos> 60 && y_pos < 90) || (x_pos > 400 && x_pos<560 && y_pos> 60 && y_pos < 90) ||  (x_pos > 80 && x_pos<240 && y_pos> 360 && y_pos < 400) || (x_pos > 400 && x_pos<560 && y_pos> 360 && y_pos < 400) ||  (x_pos > 120 && x_pos<220 && y_pos> 170 && y_pos < 210)|| (x_pos > 420 && x_pos<520 && y_pos> 170 && y_pos < 210))
//    x_pos = 9'b101000000;
    begin
    y_pos <= y_pos ;
    end
    else
    y_pos <= y_pos+ 10;
    end
    if(up)
    begin
    if (y_pos - 10 < 25 || (x_pos > 220 && x_pos<420 && y_pos> 130 && y_pos < 170) || (x_pos > 220 && x_pos<420 && y_pos> 305 && y_pos < 360) || (x_pos > 80 && x_pos<240 && y_pos> 370 && y_pos < 420) || (x_pos > 400 && x_pos<560 && y_pos> 370 && y_pos < 420)||  (x_pos > 80 && x_pos<240 && y_pos> 70 && y_pos < 120) || (x_pos > 400 && x_pos<560 && y_pos> 70 && y_pos < 120) ||  (x_pos > 120 && x_pos<220 && y_pos> 170 && y_pos < 220)|| (x_pos > 420 && x_pos<520 && y_pos> 170 && y_pos < 220))
    begin
//    x_pos = 9'b101000000;
    y_pos <= y_pos;
    end
    else
    y_pos <= y_pos - 10;
    end
//    end 
//    else if (counter == 15)
//    begin counter<=0;
//    end
    if ((((x_pos-27)**2 + (y_pos-300)**2)) <= 225)
    begin
    collision = 6'b000001;
//    won =1;
    end
    if ((((x_pos-27)**2 + (y_pos-250)**2)) <= 225)
    begin
    collision = 6'b000010;
//    won =1;
    end
    if ((((x_pos-27)**2 + (y_pos-200)**2)) <= 225)
    begin
    collision = 6'b000011;
//    won =1;
    end
    if ((((x_pos-27)**2 + (y_pos-150)**2)) <= 225)
    begin
    collision = 6'b000100;
//    won =1;
    end
    if ((((x_pos-27)**2 + (y_pos-100)**2)) <= 225)
    begin
    collision = 6'b000101;
//    won =1;
    end
    if ((((x_pos-27)**2 + (y_pos-350)**2)) <= 225)
    begin
    collision = 6'b000110;
//    won =1;
    end
    if ((((x_pos-27)**2 + (y_pos-400)**2)) <= 225)
    begin
    collision = 6'b000111;
//    won =1;
    end
    //
    if ((((x_pos-603)**2 + (y_pos-300)**2)) <= 225)
    begin
    collision = 6'b001000;
//    won =1;
    end
    if ((((x_pos-603)**2 + (y_pos-250)**2)) <= 225)
    begin
    collision = 6'b001001;
//    won =1;
    end
    if ((((x_pos-603)**2 + (y_pos-200)**2)) <= 225)
    begin
    collision = 6'b001010;
//    won =1;
    end
    if ((((x_pos-603)**2 + (y_pos-150)**2)) <= 225)
    begin
    collision = 6'b001011;
//    won =1;
    end
    if ((((x_pos-603)**2 + (y_pos-100)**2)) <= 225)
    begin
    collision = 6'b001100;
//    won =1;
    end
    if ((((x_pos-603)**2 + (y_pos-350)**2)) <= 225)
    begin
    collision = 6'b001101;
//    won =1;
    end
    if ((((x_pos-603)**2 + (y_pos-400)**2)) <= 225)
    begin
    collision = 6'b001110;
//    won =1;
    end
    if (((x_pos-(35))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b001111;
//    won =1;
    end
    if  (((x_pos-(35+(25*2)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010000;
//    won =1;
    end
    if  (((x_pos-(35+(25*4)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010001;
//    won =1;
    end
    if  (((x_pos-(35+(25*6)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010010;
//    won =1;
    end
    if  (((x_pos-(35+(25*8)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010011;
//    won =1;
    end
    //
    if  (((x_pos-(35+(25*10)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010100;
//    won =1;
    end
    if  (((x_pos-(345+(25*0)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010101;
//    won =1;
    end
    if  (((x_pos-(345+(25*2)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010110;
//    won =1;
    end
    if  (((x_pos-(345+(25*4)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b010111;
//    won =1;
    end
    if  (((x_pos-(345+(25*6)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b011000;
//    won =1;
    end
    if  (((x_pos-(345+(25*8)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b011001;
//    won =1;
    end
    if  (((x_pos-(345+(25*10)))**2 + (y_pos-40)**2) <= 225)
    begin
    collision = 6'b011010;
//    won =1;
    end
    
    
    if (((x_pos-(35))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b011011;
//    won =1;
    end
    if  (((x_pos-(35+(25*2)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b011100;
//    won =1;
    end
    if  (((x_pos-(35+(25*4)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b011101;
//    won =1;
    end
    if  (((x_pos-(35+(25*6)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b011110;
//    won =1;
    end
    if  (((x_pos-(35+(25*8)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b011111;
//    won =1;
    end
    //
    if  (((x_pos-(35+(25*10)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b100000;
//    won =1;
    end
    if  (((x_pos-(345+(25*0)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b100001;
//    won =1;
    end
    if  (((x_pos-(345+(25*2)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b100010;
//    won =1;
    end
    if  (((x_pos-(345+(25*4)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b100011;
//    won =1;
    end
    if  (((x_pos-(345+(25*6)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b100100;
//    won =1;
    end
    if  (((x_pos-(345+(25*8)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b100101;
//    won =1;
    end
    if  (((x_pos-(345+(25*10)))**2 + (y_pos-445)**2) <= 225)
    begin
    collision = 6'b110100;
//    won =1;
    end
    
    
    
    
//    if  (((x_pos-(52+(25*2)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b100111;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*4)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101000;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*6)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101001;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*8)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101010;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*10)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101011;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*12)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101100;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*14)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101101;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*16)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101110;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*18)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b101111;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*20)))**2 + (y_pos-355)**2) <= 225)
//    begin
//    collision = 6'b110000;
////    won =1;
//    end
    
    
    
//    if  (((x_pos-(52+(25*2)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b110001;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*4)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b110010;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*6)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b110011;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*8)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b110100;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*10)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b110101;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*12)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b110110;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*14)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b110111;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*16)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b111000;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*18)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b111001;
////    won =1;
//    end
//    if  (((x_pos-(52+(25*20)))**2 + (y_pos-115)**2) <= 225)
//    begin
//    collision = 6'b111010;
////    won =1;
//    end
    end
//    else 
//    begin 
//    x_pos <= x_pos;
//    y_pos <= y_pos;
//    end
    
endmodule
