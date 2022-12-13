`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 12:04:34 AM
// Design Name: 
// Module Name: pixel_gen
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


module pixel_gen(
    input clk_d,
    input [9:0]pixel_x,
    input [9:0]pixel_y,
    input [9:0]pacman_x, 
    input [9:0]pacman_y,
    input [9:0]ghost_x, 
    input [9:0]ghost_y,
    input [9:0]ghost2_x, 
    input [9:0]ghost2_y,
    input video_on,
    //input [1:0]ghost_co,
    input [5:0] collision,
//    input [5:0]won_c,
    input lost,
    
    output reg [3:0] red = 0,
    output reg [3:0] green = 0,
    output reg [3:0] blue = 0
    );
//    reg [9:0]pacman_x;
    reg prev = 0;
    reg won = 0;
//    reg [5:0]collision;
    reg a=1, b=1, c=1, d=1, e=1, f=1, g=1, h=1, i=1, j=1, k=1, l=1, m=1, n=1, o=1,p=1, q=1, r=1, s=1,t=1, u=1, v=1, w=1, x=1, y=1, z=1;
    reg aa=1, ab=1, ac=1, ad=1, ae=1, af=1, ag=1, ah=1, ai=1, aj=1, ak=1, al=1; 
//    , am=1, an=1, ao=1, ap=1, aq=1, ar=1
//    reg as=1, at=1, au=1, av=1;
//    reg aw=1, ax=1, ay=1, az=1;
//    reg ba =1, bb=1, bc=1, bd=1, be=1, bf=1;
    always @ (posedge clk_d) 
        
        begin 
            if (collision == 6'b000001)
            begin
            a=0;
            end
            if (collision == 6'b000010)
            begin
            b=0;
            end
            if (collision == 6'b000011)
            begin
            c=0;
            end
            if (collision == 6'b000100)
            begin
            d=0;
            end    
            if (collision == 6'b000101)
            begin
            e=0;
            end
            if (collision == 6'b000110)
            begin
            f=0;
            end
            if (collision == 6'b000111)
            begin
            g=0;
            end
            if (collision == 6'b001000)
            begin
            h=0;
            end
            if (collision == 6'b001001)
            begin
            i=0;
            end
            if (collision == 6'b001010)
            begin
            j=0;
            end    
            if (collision == 6'b001011)
            begin
            k=0;
            end
            if (collision == 6'b001100)
            begin
            l=0;
            end
            if (collision == 6'b001101)
            begin
            m=0;
            end
            if (collision == 6'b001110)
            begin
            n=0;
            end
            if (collision == 6'b001111)
            begin
            o=0;
            end
            if (collision == 6'b010000)
            begin
            p=0;
            end    
            if (collision == 6'b010001)
            begin
            q=0;
            end
            if (collision == 6'b010010)
            begin
            r=0;
            end
            if (collision == 6'b010011)
            begin
            s=0;
            end
            if (collision == 6'b010100)
            begin
            t=0;
            end
            if (collision == 6'b010101)
            begin
            u=0;
            end
            if (collision == 6'b010110)
            begin
            v=0;
            end    
            if (collision == 6'b010111)
            begin
            w=0;
            end
            if (collision == 6'b011000)
            begin
            x=0;
            end
            if (collision == 6'b011001)
            begin
            y=0;
            end
            if (collision == 6'b011010)
            begin
            z=0;
            end
            
            if (collision == 6'b011011)
            begin
            aa=0;
            end
            if (collision == 6'b011100)
            begin
            ab=0;
            end
            if (collision == 6'b011101)
            begin
            ac=0;
            end
            if (collision == 6'b011110)
            begin
            ad=0;
            end    
            if (collision == 6'b011111)
            begin
            ae=0;
            end
            if (collision == 6'b100000)
            begin
            af=0;
            end
            if (collision == 6'b100001)
            begin
            ag=0;
            end
            if (collision == 6'b100010)
            begin
            ah=0;
            end
            if (collision == 6'b100011)
            begin
            ai=0;
            end
            if (collision == 6'b100100)
            begin
            aj=0;
            end    
            if (collision == 6'b100101)
            begin
            ak=0;
            end
            if (collision == 6'b110100)
            begin
            al=0;
            end
//            if (collision == 6'b100110)
//            begin
//            am=0;
//            end
//            if (collision == 6'b100111)
//            begin
//            an=0;
//            end
//            if (collision == 6'b101000)
//            begin
//            ao=0;
//            end
//            if (collision == 6'b101001)
//            begin
//            ap=0;
//            end    
//            if (collision == 6'b101010)
//            begin
//            aq=0;
//            end
//            if (collision == 6'b101011)
//            begin
//            ar=0;
//            end
//            if (collision == 6'b101100)
//            begin
//            as=0;
//            end
//            if (collision == 6'b101101)
//            begin
//            at=0;
//            end
//            if (collision == 6'b101110)
//            begin
//            au=0;
//            end
//            if (collision == 6'b101111)
//            begin
//            av=0;
//            end    
//            if (collision == 6'b110000)
//            begin
//            aw=0;
//            end
//            if (collision == 6'b110001)
//            begin
//            ax=0;
//            end
//            if (collision == 6'b110010)
//            begin
//            ay=0;
//            end
//            if (collision == 6'b110011)
//            begin
//            az=0;
//            end
            
            
//            if (collision == 6'b110101)
//            begin
//            ba=0;
//            end
//            if (collision == 6'b110110)
//            begin
//            bb=0;
//            end    
//            if (collision == 6'b110111)
//            begin
//            bc=0;
//            end
//            if (collision == 6'b111000)
//            begin
//            bd=0;
//            end
//            if (collision == 6'b111001)
//            begin
//            be=0;
//            end
//            if (collision == 6'b111010)
//            begin
//            bf=0;
//            end
//            if ((((pacman_x-27)**2 + (pacman_y-300)**2)) <= 225)
//            begin
//                a = 1;
//        //    won =1;
//            end
            if( a == 0 && b==0 && c==0 && d == 0 && e==0 && f==0 && g==0 && h ==0 && i == 0 && j == 0 && k == 0 && l == 0 && m == 0 && n == 0 && o == 0 && p == 0 && q == 0 && r == 0 && r == 0 && s == 0 && t==0 && u == 0 && v==0&&w==0&&x==0&&y==0&&z==0&& aa==0 && ab==0 && ac==0 && ad == 0 && ae == 0 && af == 0&& ag == 0 && ah ==0 & ai==0 && aj == 0 && ak == 0 && al == 0)
            begin
            won=1;
            end
            if (lost)
            begin
            prev = 1;
            end
            if (~won & ~prev)
            begin
            blue <= video_on?(((pixel_x > 80 & pixel_x < 240) & (pixel_y > 80 & pixel_y < 100)) || ((pixel_x > 400 & pixel_x < 560) & (pixel_y > 80 & pixel_y < 100)) || ((pixel_x > 310 & pixel_x < 330) & (pixel_y > 0 & pixel_y < 100)) || ((pixel_x > 220 & pixel_x < 420) & (pixel_y > 130 & pixel_y < 150)) || ((pixel_x >260 & pixel_x < 380) & (pixel_y > 200 & pixel_y < 280)) || ((pixel_x > 310 & pixel_x < 330) & (pixel_y > 380 & pixel_y < 480)) || ((pixel_x > 220 & pixel_x < 420) & (pixel_y > 320 & pixel_y < 340)) || ((pixel_x > 80 & pixel_x < 240) & (pixel_y > 380 & pixel_y < 400)) || ((pixel_x > 400 & pixel_x < 560) & (pixel_y > 380 & pixel_y < 400)) || ((pixel_x > 100 & pixel_x < 220) & (pixel_y > 180 & pixel_y < 200)) || ((pixel_x > 420 & pixel_x < 540) & (pixel_y > 180 & pixel_y < 200)) || ((pixel_x > 150 & pixel_x < 170) & (pixel_y > 200 & pixel_y < 300)) || ((pixel_x > 470 & pixel_x < 490) & (pixel_y > 200 & pixel_y < 300)) || ((pixel_x > 40 & pixel_x < 100) & (pixel_y > 240 & pixel_y < 340)) || ((pixel_x > 530 & pixel_x < 590) & (pixel_y > 240 & pixel_y < 340)) || ((pixel_y > 0 & pixel_y < 480) & (pixel_x > 0 & pixel_x < 10)) || ((pixel_y > 0 & pixel_y < 480) & (pixel_x > 630 & pixel_x < 640)) || ((pixel_y > 0 & pixel_y < 10) & (pixel_x > 0 & pixel_x < 640)) || ((pixel_y > 470 & pixel_y < 480) & (pixel_x > 0 & pixel_x < 640)))?4'hf:4'h0:4'h0;
            //red  <= video_on?((pixel_x == 300 & pixel_y == 320)|| (pixel_x == 340 & pixel_y == 320) || (pixel_x == 320 & pixel_y == 300) || (pixel_x == 320 & pixel_y == 340))?4'hf:4'h0:4'h0;            
            green  <= video_on?((((pixel_x-pacman_x)**2 + (pixel_y- pacman_y)**2) < 100) || ((pixel_x-ghost_x)**2 + ((pixel_y- ghost_y)**2) < 144)|| ((pixel_x-ghost2_x)**2 + ((pixel_y- ghost2_y)**2) < 144))?4'hf:4'h0:4'h0;             
//           
            red  <= video_on?((((pixel_x-(35+(25*0)))**2 + (pixel_y- 40)**2) < 25)*o || (((pixel_x-(35+(25*2)))**2 + (pixel_y- 40)**2) < 25)*p || (((pixel_x-(35+(25*4)))**2 + (pixel_y- 40)**2) < 25)*q ||  (((pixel_x-(35+(25*6)))**2 + (pixel_y- 40)**2)<25)*r || (((pixel_x-(35+(25*8)))**2 + (pixel_y- 40)**2) < 25)*s || (((pixel_x-(35+(25*10)))**2 + (pixel_y- 40)**2) < 25)*t || (((pixel_x-(345+(25*0)))**2 + (pixel_y- 40)**2) < 25)*u ||  (((pixel_x-(345+(25*2)))**2 + (pixel_y- 40)**2) < 25)*v || w*(((pixel_x-(345+(25*4)))**2 + (pixel_y- 40)**2) < 25) || x*(((pixel_x-(345+(25*6)))**2 + (pixel_y- 40)**2)<25) || y*(((pixel_x-(345+(25*8)))**2 + (pixel_y- 40)**2) < 25) || z*(((pixel_x-(345+(25*10)))**2 + (pixel_y- 40)**2) < 25) ||
              ((((pixel_x-(27))**2 + (pixel_y- (75+(25*1)))**2) < 25))*e ||  ((((pixel_x-(27))**2 + (pixel_y- (75+(25*3)))**2) < 25))*d || ((((pixel_x-(27))**2 + (pixel_y- (75+(25*5)))**2) < 25))*c || ((((pixel_x-(27))**2 + (pixel_y- (75+(25*7)))**2) < 25))*b || ((((pixel_x-(27))**2 + (pixel_y- (75+(25*9)))**2) < 25))*a || f*((((pixel_x-(27))**2 + (pixel_y- (75+(25*11)))**2) < 25)) || g*((((pixel_x-(27))**2 + (pixel_y- (75+(25*13)))**2) < 25)) ||  l*(((pixel_x-(603))**2 + (pixel_y- (75+(25*1)))**2) < 25) || k*(((pixel_x-(603))**2 + (pixel_y- (75+(25*3)))**2) < 25) || j*(((pixel_x-(603))**2 + (pixel_y- (75+(25*5)))**2) < 25) || i*(((pixel_x-(603))**2 + (pixel_y- (75+(25*7)))**2) < 25) || h*(((pixel_x-(603))**2 + (pixel_y- (75+(25*9)))**2) < 25) || (((pixel_x-(603))**2 + (pixel_y- (75+(25*11)))**2) < 25)*m || (((pixel_x-(603))**2 + (pixel_y- (75+(25*13)))**2) < 25) * n || (((pixel_x-(35+(25*0)))**2 + (pixel_y- 445)**2) < 25)*aa || (((pixel_x-(35+(25*2)))**2 + (pixel_y- 445)**2) < 25)*ab || (((pixel_x-(35+(25*4)))**2 + (pixel_y- 445)**2) < 25)*ac || (((pixel_x-(35+(25*6)))**2 + (pixel_y- 445)**2)<25)*ad || (((pixel_x-(35+(25*8)))**2 + (pixel_y- 445)**2) < 25)*ae || (((pixel_x-(35+(25*10)))**2 + (pixel_y- 445)**2) < 25)*af || (((pixel_x-(345+(25*0)))**2 + (pixel_y- 445)**2) < 25)*ag || (((pixel_x-(345+(25*2)))**2 + (pixel_y- 445)**2) < 25)*ah || (((pixel_x-(345+(25*4)))**2 + (pixel_y- 445)**2) < 25)*ai || (((pixel_x-(345+(25*6)))**2 + (pixel_y- 445)**2)<25)*aj || (((pixel_x-(345+(25*8)))**2 + (pixel_y- 445)**2) < 25)*ak || (((pixel_x-(345+(25*10)))**2 + (pixel_y- 445)**2) < 25)*al || (((pixel_x-pacman_x)**2 + (pixel_y- pacman_y)**2) < 100)
             )?4'hf:4'h0:4'h0;       
            end
//            (((pixel_x-(52+(25*2)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*4)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*6)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*8)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*10)))**2 + (pixel_y- 355)**2) < 25)
//             || (((pixel_x-(52+(25*12)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*14)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*16)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*18)))**2 + (pixel_y- 355)**2) < 25) || (((pixel_x-(52+(25*20)))**2 + (pixel_y- 355)**2) < 25)
//             || (((pixel_x-(52+(25*2)))**2 + (pixel_y- 115)**2) < 25) ||  (((pixel_x-(52+(25*4)))**2 + (pixel_y- 115)**2) < 25) || (((pixel_x-(52+(25*6)))**2 + (pixel_y- 115)**2) < 25) || (((pixel_x-(52+(25*8)))**2 + (pixel_y- 115)**2) < 25) || (((pixel_x-(52+(25*10)))**2 + (pixel_y- 115)**2) < 25)
//             || (((pixel_x-(52+(25*12)))**2 + (pixel_y- 115)**2) < 25) || (((pixel_x-(52+(25*14)))**2 + (pixel_y- 115)**2) < 25) || (((pixel_x-(52+(25*16)))**2 + (pixel_y- 115)**2) < 25) || (((pixel_x-(52+(25*18)))**2 + (pixel_y- 115)**2) < 25) || (((pixel_x-(52+(25*20)))**2 + (pixel_y- 115)**2) < 25)
            if (prev)
            begin
            
            blue <= video_on?((pixel_x >= 170 & pixel_x <= 190 & pixel_y > 140 & pixel_y < 320 ) ||(pixel_x >= 170 & pixel_x <= 230 & pixel_y > 320 & pixel_y < 340 ) || (pixel_x >= 250 & pixel_x <= 310 & pixel_y > 140 & pixel_y < 340 ) || (pixel_x >= 330 & pixel_x <= 390 & pixel_y > 140 & pixel_y < 160 ) || (pixel_x >= 330 & pixel_x <= 350 & pixel_y > 160 & pixel_y < 230 ) || (pixel_x >= 330 & pixel_x <= 390 & pixel_y > 230 & pixel_y < 250) || (pixel_x >= 370 & pixel_x <= 390 & pixel_y > 250 & pixel_y < 320 ) || (pixel_x >= 330 & pixel_x <= 390 & pixel_y > 320 & pixel_y < 340 ) || (pixel_x >= 410 & pixel_x <= 470 & pixel_y > 140 & pixel_y < 160 ) || (pixel_x >= 430 & pixel_x <= 450 & pixel_y > 160 & pixel_y < 340 ))?4'hf:4'h0:4'h0;
            green <= video_on?4'hf:4'h0;
            red <= video_on?4'hf:4'h0;
            end
            if (won)
            begin
            
            blue <= video_on?((pixel_x >= 180 & pixel_x <= 200 & pixel_y > 140 & pixel_y < 340 ) ||(pixel_x >= 220 & pixel_x <= 240 & pixel_y > 240 & pixel_y < 280 ) || (pixel_x >= 200 & pixel_x <= 220 & pixel_y > 280 & pixel_y < 320 ) || (pixel_x >= 240 & pixel_x <= 260 & pixel_y > 240 & pixel_y < 280 ) || (pixel_x >= 260 & pixel_x <= 280 & pixel_y > 280 & pixel_y < 320 ) || (pixel_x >= 280 & pixel_x <= 300 & pixel_y > 140 & pixel_y < 340) || (pixel_x >= 320 & pixel_x <= 400 & pixel_y > 140 & pixel_y < 340 ) || (pixel_x >= 420 & pixel_x <= 440 & pixel_y > 140 & pixel_y < 340 ) || (pixel_x >= 480 & pixel_x <= 500 & pixel_y > 140 & pixel_y < 340 ) || (pixel_x >= 440 & pixel_x <= 460 & pixel_y > 190 & pixel_y < 240 ) || (pixel_x >= 460 & pixel_x <= 480 & pixel_y > 240 & pixel_y < 290 ))?4'hf:4'h0:4'h0;
            green <= video_on?4'hf:4'h0;
            red <= video_on?4'hf:4'h0;
            end
            
            
        end
//        || ((((pixel_x-320)*0.04)**2) + (((pixel_y- 125)*0.01)**2) < 1)
//    ((pixel_x > 340 & pixel_x < 380 & pixel_y > 160 & pixel_y < 320 ))
//    ((pixel_x > 340 & pixel_x < 380 & pixel_y > 160 & pixel_y < 320 ))
endmodule
