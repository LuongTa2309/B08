`timescale 1ns / 1ps

module tb_top;

    // Khai báo tín hiệu kết nối với rtl
    reg [7:0] d_in;
    reg [2:0] sel;
    reg       din_demux;
    
    wire      y_mux;
    wire [7:0] y_demux;

   // Gọi module rtl gốc của đề tài
    top uut (
        .d_in(d_in),
        .sel(sel),
        .din_demux(din_demux),
        .y_mux(y_mux),
        .y_demux(y_demux)
    );
