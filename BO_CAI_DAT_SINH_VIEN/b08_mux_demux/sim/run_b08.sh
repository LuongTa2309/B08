#!/bin/bash
cd "$(dirname "$0")/.."
mkdir -p sim/build sim/waveforms
iverilog -g2012 -o sim/build/tb_top rtl/top.v tb/tb_top.v || exit 1
vvp sim/build/tb_top | tee sim/build/log.txt
mv -f sim.vcd sim/waveforms/top.vcd 2>/dev/null
echo "Xem song: gtkwave sim/waveforms/top.vcd"
