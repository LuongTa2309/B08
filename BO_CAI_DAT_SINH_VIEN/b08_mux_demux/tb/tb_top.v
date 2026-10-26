`timescale 1ns / 1ps

module tb_top;

    reg  [7:0] d_in;
    reg  [2:0] sel;
    reg        din_demux;
    wire       y_mux;
    wire [7:0] y_demux;

    integer i, p, errors;
    reg [7:0] pat [0:3];
    reg       exp_mux;
    reg [7:0] exp_demux;

    top uut (
        .d_in(d_in), .sel(sel), .din_demux(din_demux),
        .y_mux(y_mux), .y_demux(y_demux)
    );

    initial begin
        $dumpfile("sim.vcd");
        $dumpvars(0, tb_top);

        errors = 0;
        pat[0] = 8'b10101010;
        pat[1] = 8'b01010101;
        pat[2] = 8'b11110000;
        pat[3] = 8'b00001111;
        din_demux = 1'b0;

        // ---- Kiem tra MUX: quet sel voi nhieu mau d_in ----
        for (p = 0; p < 4; p = p + 1) begin
            for (i = 0; i < 8; i = i + 1) begin
                d_in = pat[p]; sel = i[2:0]; #10;
                exp_mux = pat[p][i];
                if (y_mux !== exp_mux) begin
                    errors = errors + 1;
                    $display("FAIL MUX d_in=%b sel=%0d exp=%b got=%b", d_in, sel, exp_mux, y_mux);
                end else
                    $display("PASS MUX d_in=%b sel=%0d y=%b", d_in, sel, y_mux);
            end
        end
        // MUX voi moi bit 1 rieng le (walking one)
        for (i = 0; i < 8; i = i + 1) begin
            d_in = 8'b1 << i;
            for (p = 0; p < 8; p = p + 1) begin
                sel = p[2:0]; #10;
                exp_mux = (p == i);
                if (y_mux !== exp_mux) begin
                    errors = errors + 1;
                    $display("FAIL MUX walking d_in=%b sel=%0d exp=%b got=%b", d_in, sel, exp_mux, y_mux);
                end
            end
        end

        // ---- Kiem tra DEMUX: quet sel voi din = 1 va din = 0 ----
        d_in = 8'h00;
        for (p = 0; p < 2; p = p + 1) begin
            din_demux = (p == 0) ? 1'b1 : 1'b0;
            for (i = 0; i < 8; i = i + 1) begin
                sel = i[2:0]; #10;
                exp_demux = din_demux ? (8'b1 << i) : 8'h00;
                if (y_demux !== exp_demux) begin
                    errors = errors + 1;
                    $display("FAIL DEMUX din=%b sel=%0d exp=%b got=%b", din_demux, sel, exp_demux, y_demux);
                end else
                    $display("PASS DEMUX din=%b sel=%0d y=%b", din_demux, sel, y_demux);
            end
        end

        if (errors == 0) $display("=== TAT CA CA KIEM THU DAT (PASS) ===");
        else             $display("=== CO %0d LOI (FAIL) ===", errors);
        $finish;
    end

endmodule