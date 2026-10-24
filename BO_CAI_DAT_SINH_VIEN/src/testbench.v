`timescale 1ns / 1ps

module tb_top;

    // Khai báo tín hiệu kết nối với top.v
    reg [7:0] d_in;
    reg [2:0] sel;
    reg       din_demux;
    
    wire      y_mux;
    wire [7:0] y_demux;

   
