set -eo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"; cd "$ROOT"
OUT=06_GDSII/synthesis; mkdir -p "$OUT"

command -v yosys >/dev/null || { echo "[LOI] thieu 'yosys' (sudo apt install yosys)"; exit 2; }

yosys -V | head -1 | tee "$OUT/tool_versions.txt"
echo "Che do: Tong hop cong logic chung (Generic)" | tee -a "$OUT/tool_versions.txt"

cat > "$OUT/synth.ys" <<EOF
read_verilog -sv rtl/b08_demux_only.v
read_verilog -sv rtl/b08_mux_demux.v
read_verilog -sv rtl/b08_mux_only.v
hierarchy -check -top b08_mux_demux
proc
opt
fsm
opt
memory
opt
techmap
opt
setundef -zero
splitnets
opt_clean -purge
tee -o $OUT/synth_stat.txt stat
write_verilog -noattr $OUT/netlist.v
EOF

yosys -Q -s "$OUT/synth.ys" > "$OUT/yosys.log" 2>&1
cat "$OUT/synth_stat.txt"

# --- kiem tra phu hop phan loai mach (To hop) ---
if grep -qE "\$_DFF" "$OUT/synth_stat.txt"; then
  echo "[INFO] Netlist co phan tu nho -> mach TUAN TU."
  echo "[CANH BAO] Mach nay phai la TO HOP (0 flip-flop)!"; exit 1
else
  echo "[INFO] Netlist khong co phan tu nho -> mach TO HOP dung chuan."
  echo "[OK] Hoan tat tong hop logic chung."
fi