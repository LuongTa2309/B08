#!/bin/bash
# Chay tong hop 5 ban bang Yosys, ket qua luu trong synth/
cd "$(dirname "$0")/.."
SRC=$(ls -d /mnt/c/ThucHanh_LaLeKimOanh/B08*); R="$SRC/04_IMPLEMENTATION/rtl"
run(){ yosys -q -p "read_verilog -sv $1; synth -top $2; tee -o synth/$3.txt stat"; }
run rtl/b08_mux_demux.v  b08_mux_demux  A_dung_chung_cua_ban
run $R/b08_mux_demux.sv  b08_mux_demux  B_dung_chung_cua_de
run $R/b08_mux_only.sv   b08_mux_only   C_mux_only
run $R/b08_demux_only.sv b08_demux_only D_demux_only
run synth/rieng_dec.v    b08_rieng_dec  E_hai_decoder_rieng
