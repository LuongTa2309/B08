module tt_um_b08_mux_demux (clk,
    ena,
    rst_n,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 input clk;
 input ena;
 input rst_n;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;

 sky130_fd_sc_hd__buf_2 _14_ (.A(net9),
    .X(_00_));
 sky130_fd_sc_hd__and4bb_1 _15_ (.A_N(net10),
    .B_N(net11),
    .C(net12),
    .D(_00_),
    .X(_01_));
 sky130_fd_sc_hd__clkbuf_1 _16_ (.A(_01_),
    .X(net14));
 sky130_fd_sc_hd__and4bb_1 _17_ (.A_N(_00_),
    .B_N(net11),
    .C(net12),
    .D(net10),
    .X(_02_));
 sky130_fd_sc_hd__clkbuf_1 _18_ (.A(_02_),
    .X(net15));
 sky130_fd_sc_hd__and4b_1 _19_ (.A_N(net11),
    .B(net12),
    .C(net10),
    .D(_00_),
    .X(_03_));
 sky130_fd_sc_hd__clkbuf_1 _20_ (.A(_03_),
    .X(net16));
 sky130_fd_sc_hd__and4bb_1 _21_ (.A_N(net10),
    .B_N(_00_),
    .C(net11),
    .D(net12),
    .X(_04_));
 sky130_fd_sc_hd__clkbuf_1 _22_ (.A(_04_),
    .X(net17));
 sky130_fd_sc_hd__and4b_1 _23_ (.A_N(net10),
    .B(_00_),
    .C(net11),
    .D(net12),
    .X(_05_));
 sky130_fd_sc_hd__clkbuf_1 _24_ (.A(_05_),
    .X(net18));
 sky130_fd_sc_hd__and4b_1 _25_ (.A_N(_00_),
    .B(net11),
    .C(net12),
    .D(net10),
    .X(_06_));
 sky130_fd_sc_hd__clkbuf_1 _26_ (.A(_06_),
    .X(net19));
 sky130_fd_sc_hd__and4_1 _27_ (.A(net10),
    .B(_00_),
    .C(net11),
    .D(net12),
    .X(_07_));
 sky130_fd_sc_hd__clkbuf_1 _28_ (.A(_07_),
    .X(net20));
 sky130_fd_sc_hd__or2b_1 _29_ (.A(net2),
    .B_N(net9),
    .X(_08_));
 sky130_fd_sc_hd__o31a_1 _30_ (.A1(_00_),
    .A2(net12),
    .A3(net1),
    .B1(_08_),
    .X(_09_));
 sky130_fd_sc_hd__mux2_1 _31_ (.A0(net5),
    .A1(net6),
    .S(net9),
    .X(_10_));
 sky130_fd_sc_hd__mux2_1 _32_ (.A0(net3),
    .A1(net4),
    .S(_00_),
    .X(_11_));
 sky130_fd_sc_hd__mux2_1 _33_ (.A0(net7),
    .A1(net8),
    .S(_00_),
    .X(_12_));
 sky130_fd_sc_hd__mux4_1 _34_ (.A0(_09_),
    .A1(_10_),
    .A2(_11_),
    .A3(_12_),
    .S0(net11),
    .S1(net10),
    .X(_13_));
 sky130_fd_sc_hd__buf_1 _35_ (.A(_13_),
    .X(net13));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_22 (.LO(net22));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_23 (.LO(net23));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_24 (.LO(net24));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_25 (.LO(net25));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_26 (.LO(net26));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_27 (.LO(net27));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_28 (.LO(net28));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_29 (.LO(net29));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_30 (.LO(net30));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_31 (.LO(net31));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_32 (.LO(net32));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_33 (.LO(net33));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_34 (.LO(net34));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_35 (.LO(net35));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_36 (.LO(net36));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(ui_in[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(ui_in[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(ui_in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(ui_in[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(ui_in[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(ui_in[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(ui_in[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(ui_in[7]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(uio_in[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input10 (.A(uio_in[1]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_2 input11 (.A(uio_in[2]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_2 input12 (.A(uio_in[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(uo_out[0]));
 sky130_fd_sc_hd__clkbuf_4 output14 (.A(net14),
    .X(uo_out[1]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(uo_out[2]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(uo_out[3]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(uo_out[4]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(uo_out[5]));
 sky130_fd_sc_hd__clkbuf_4 output19 (.A(net19),
    .X(uo_out[6]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(uo_out[7]));
 sky130_fd_sc_hd__conb_1 tt_um_b08_mux_demux_21 (.LO(net21));
 assign uio_oe[0] = net21;
 assign uio_oe[1] = net22;
 assign uio_oe[2] = net23;
 assign uio_oe[3] = net24;
 assign uio_oe[4] = net25;
 assign uio_oe[5] = net26;
 assign uio_oe[6] = net27;
 assign uio_oe[7] = net28;
 assign uio_out[0] = net29;
 assign uio_out[1] = net30;
 assign uio_out[2] = net31;
 assign uio_out[3] = net32;
 assign uio_out[4] = net33;
 assign uio_out[5] = net34;
 assign uio_out[6] = net35;
 assign uio_out[7] = net36;
endmodule
