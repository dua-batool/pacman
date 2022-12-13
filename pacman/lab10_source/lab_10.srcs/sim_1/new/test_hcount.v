`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 12:30:16 AM
// Design Name: 
// Module Name: test_hcount
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


//module test_hcount(
//    );
//    reg clk; 
//    wire [9:0] dh_count;
//    wire dtrig_v;
//    hcounter module_u_test (clk, dh_count, dtrig_v);
//    initial
//    clk = 1'b0;
    
//    always
//        #5 clk = ~clk;
//    //end
//endmodule

//module test_vcount(
//    );
//    reg clk; 
//    wire [9:0] dv_count;
//    reg denable_v;
//    v_counter module_u_test (clk, denable_v, dv_count);
//    initial
//    clk = 1'b0;
    
//    always
//        #5 clk = ~clk;
//    //end
//    initial
//    begin 
//        denable_v = 1'b0;
//        #100 denable_v = 1'b1;
//        #100 denable_v = 1'b0;
//        #100 denable_v = 1'b1;
        
//    end 
    
//endmodule


//module test_clkd(
//    );
//    reg clk; 
//    wire dclk_d;
//    clock_divider module_u_test (clk, dclk_d);
    
//    initial
//    clk = 1'b0;
    
//    always
//        #5 clk = ~clk;
//endmodule


//module test_top(
//    );
//    reg clk; 
//    wire [9:0] dh_count;
//    wire [9:0] dv_count;
//    top_level module_u_test (clk, dh_count, dv_count);
    
//    initial
//    clk = 1'b0;
    
//    always
//        #5 clk = ~clk;
//endmodule


module test_top();
reg clk;
wire dh_sync;
wire dv_sync;
wire [3:0]dred;
wire [3:0]dgreen;
wire [3:0]dblue;

top top_module_u_test (clk, dh_sync, dv_sync, dred, dgreen, dblue);

initial
clk = 1'b0;

always 
#5 clk = ~clk;

endmodule
