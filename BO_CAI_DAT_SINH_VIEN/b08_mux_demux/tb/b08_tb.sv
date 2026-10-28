`timescale 1ns / 1ps

module tb_rtl;

    // Khai bao cac tin hieu dieu khien va tin hieu ngo ra
    reg  [7:0] mux_in;
    reg  [2:0] sel;
    reg        demux_in;
    wire       mux_out;
    wire [7:0] demux_out;

    // Ket noi module thiet ke chinh (DUT) vao testbench
    b08_mux_demux uut (
        .mux_in(mux_in),
        .sel(sel),
        .demux_in(demux_in),
        .mux_out(mux_out),
        .demux_out(demux_out)
    );
    integer i;
    initial begin
    
        // Tao file ghi lai song tin hieu de kiem tra tren GTKWave
        $dumpfile("waveforms/top.vcd");
        $dumpvars(0, tb_rtl);

        //TEST CA CHUAN
        // Quet sel tu 0 den 7, test mau dich bit (walking ones) cho MUX va DEMUX
        mux_in = 8'h01; demux_in = 1'b1;
        for (i = 0; i < 8; i = i + 1) begin
    sel = i[2:0];
    #10;
    #1000; // Đợi một khoảng thời gian đủ để chạy xong
    $display("Mophong thanh cong!");
    $finish;
end

        // Thu them cac mau dich bit khac
        mux_in = 8'h04; #10;
        mux_in = 8'h80; #10;

        // Test truong hop demux_in = 0 ket hop voi mux_in toan 1 (8'hFF)
        mux_in = 8'hFF; demux_in = 1'b0;
            for (i = 0; i < 8; i = i + 1) begin
    sel = i[2:0];
    #10;
    #1000; // Đợi một khoảng thời gian đủ để chạy xong
    $display("Mophong thanh cong!");
    $finish;
end

        // TEST CA BIEN TU NGHI
        // Ca 1: Dung mau du lieu dan xen (8'hAA va 8'h55) de check loi dao bit
        mux_in = 8'hAA; demux_in = 1'b1; sel = 3'b010; #10;
        mux_in = 8'h55; demux_in = 1'b0; sel = 3'b101; #10;

        // Ca 2: Thay doi trang thai sel lien tuc toc do cao (stress test mach to hop)
        mux_in = 8'hF0; demux_in = 1'b1;
        sel = 3'b000; #2; // Doi dia chi nhanh moi 2ns
        sel = 3'b011; #2;
        sel = 3'b110; #2;
        sel = 3'b111; #2;

        // Ket thuc qua trinh mo phong
        $finish;
    end

endmodule