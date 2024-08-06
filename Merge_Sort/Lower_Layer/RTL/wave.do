onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/clk
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/rst_n
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/load
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/data_0
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/data_1
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/data_2
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/done
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/update
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/sorted_data
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/cmp1
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/cmp2
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/swap
add wave -noupdate -expand -group TOP -radix unsigned /lower_layer_2_1_ctrl_top/sel
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/clk
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/rst_n
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/load
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/cmp1
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/cmp2
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/swap
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/update
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/done
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/sel
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/swap_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/swap_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/update_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/update_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/done_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/done_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/sel_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/sel_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/left_count_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/left_count_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/right_count_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/right_count_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/data_count_nx
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/data_count_r
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/current_state
add wave -noupdate -expand -group CTRL -radix unsigned /lower_layer_2_1_ctrl_top/lower_2_1_ctr_inst/next_state
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/clk
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/rst_n
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/load
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/swap
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/sel
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/data_0
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/data_1
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/data_2
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/sorted_data
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/cmp1
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/cmp2
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/data_0_r
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/data_1_r
add wave -noupdate -expand -group DATA_PATH -radix unsigned /lower_layer_2_1_ctrl_top/lower_data_path/data_2_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {185 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 420
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {782 ps}
