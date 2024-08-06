onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/rst_n
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/clk
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/start_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/data_0_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/data_1_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/data_2_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/sorted_data_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/done_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/update_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/load_tb
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/i
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/tests
add wave -noupdate -expand -group TB -radix unsigned /lower_tb/test_num
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/clk
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/rst_n
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/load
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/cmp1
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/cmp2
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/swap
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/update
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/done
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/sel
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/swap_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/swap_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/update_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/update_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/done_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/done_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/sel_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/sel_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/small_count_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/small_count_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/large_count_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/large_count_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/data_count_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/data_count_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/current_state
add wave -noupdate -expand -group CTRL -radix unsigned /lower_tb/lower_layer_inst/lower_2_1_ctr_inst/next_state
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/clk
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/rst_n
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/load
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/sel
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/data_0
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/data_1
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/data_2
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/sorted_data
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/cmp1
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/cmp2
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/data_0_r
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/data_1_r
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/data_2_r
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/clk
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/rst_n
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/load
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/swap
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/data_1
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/data_2
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/s_data_1
add wave -noupdate -expand -group SWAP_UNIT -radix unsigned /lower_tb/lower_layer_inst/lower_data_path/swap_unit_inst/s_data_2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
