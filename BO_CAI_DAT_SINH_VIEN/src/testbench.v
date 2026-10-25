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
initial begin
        $dumpfile("sim.vcd");
        $dumpvars(0, tb_top);
        // Khởi tạo giá trị ban đầu
        d_in = 8'b10101010;
        din_demux = 1'b1;
        sel = 3'b000;

        // Quét lần lượt 8 kênh từ 0 đến 7
        #10 sel = 3'b000;
        #10 sel = 3'b001;
        #10 sel = 3'b010;
        #10 sel = 3'b011;
        #10 sel = 3'b100;
        #10 sel = 3'b101;
        #10 sel = 3 me sel = 3'b110;
        #10 sel = 3'b111;

        #10 din_demux = 1'b0;
        #10 sel = 3'b010;

        #20 $finish;
    end

endmodule