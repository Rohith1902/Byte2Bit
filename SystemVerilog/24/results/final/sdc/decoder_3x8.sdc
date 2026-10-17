###############################################################################
# Created by write_sdc
# Sat Oct 17 08:57:20 2026
###############################################################################
current_design decoder_3x8
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 
set_clock_uncertainty 0.2500 clk
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {en}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sel[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sel[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sel[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {y[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {y[7]}]
set_load -pin_load 0.0334 [get_ports {y[6]}]
set_load -pin_load 0.0334 [get_ports {y[5]}]
set_load -pin_load 0.0334 [get_ports {y[4]}]
set_load -pin_load 0.0334 [get_ports {y[3]}]
set_load -pin_load 0.0334 [get_ports {y[2]}]
set_load -pin_load 0.0334 [get_ports {y[1]}]
set_load -pin_load 0.0334 [get_ports {y[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {en}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
