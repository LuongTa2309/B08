set ::env(DESIGN_NAME) tt_um_b08_mux_demux
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_NET) "clk"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 100 100"
