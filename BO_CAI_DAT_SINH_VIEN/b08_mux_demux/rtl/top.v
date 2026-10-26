`timescale 1ns / 1ps

module top (
    input  wire [7:0] d_in,
    input  wire [2:0] sel,
    input  wire       din_demux,
    output wire       y_mux,
    output wire [7:0] y_demux
);

    // Bo giai ma 3->8 dung chung cho MUX va DEMUX
    wire [7:0] dec = 8'b0000_0001 << sel;

    assign y_mux   = |(d_in & dec);
    assign y_demux = dec & {8{din_demux}};

endmodule
