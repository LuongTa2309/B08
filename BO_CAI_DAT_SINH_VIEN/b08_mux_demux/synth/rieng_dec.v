module b08_rieng_dec (
    input  wire [7:0] mux_in,
    input  wire [2:0] sel,
    input  wire       demux_in,
    output wire       mux_out,
    output wire [7:0] demux_out
);
    wire [7:0] dec_a = 8'b0000_0001 << sel;   // decoder cho MUX
    wire [7:0] dec_b = 8'b0000_0001 << sel;   // decoder cho DEMUX
    assign mux_out   = |(mux_in & dec_a);
    assign demux_out = dec_b & {8{demux_in}};
endmodule
