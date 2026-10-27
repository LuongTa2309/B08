`timescale 1ns / 1ps

module b08_mux_demux (
    input  wire [7:0] mux_in,     // 8 ngo vao cho MUX
    input  wire [2:0] sel,        // tin hieu chon 3 bit, dung chung
    input  wire       demux_in,   // ngo vao cho DEMUX
    output wire       mux_out,    // ngo ra cua MUX
    output wire [7:0] demux_out   // 8 ngo ra cua DEMUX
);

    // Bo giai ma 3->8 DUNG CHUNG cho ca MUX va DEMUX
    wire [7:0] dec = 8'b0000_0001 << sel;

    assign mux_out   = |(mux_in & dec);        // MUX: lay bit duoc chon
    assign demux_out = dec & {8{demux_in}};    // DEMUX: dua demux_in vao dung ngo

endmodule
