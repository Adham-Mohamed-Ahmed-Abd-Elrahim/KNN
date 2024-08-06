`include "../RTL/swap_unit.sv"
`include "../RTL/lower_layer_2_2_controller.sv"
`include "../RTL/lower_layer_2_2_datapath.sv"
`include "../RTL/lower_layer_2_2_top.sv"
`timescale 1ns/1ns
module lower_22_tb (); // lower_layer_2_2
//________________________________________________//
//________________module parameters_____________________//
//______________________________________________//
parameter DATA_WIDTH=8;

//----------------------------------
parameter clk_period = 12;

//_______________________________________________// 
//________________instantiation__________________// 
//_______________________________________________// 
     logic rst_n;
     logic clk;
     logic start_tb ;
     logic  [DATA_WIDTH-1:0] data_0_tb;
     logic  [DATA_WIDTH-1:0] data_1_tb;
     logic  [DATA_WIDTH-1:0] data_2_tb;
     logic  [DATA_WIDTH-1:0] data_3_tb;
     logic  [DATA_WIDTH-1:0] sorted_data_tb;
     logic done_tb , update_tb  , load_tb;
//_______________________________________________// 
//________________instantiation__________________// 
//_______________________________________________// 
 lower_layer_2_2_ctrl_top #(
     .DATA_WIDTH(DATA_WIDTH)) lower_layer_22_inst
     (
    .clk(clk) , .rst_n(rst_n),.load(load_tb) , 
    .data_0(data_0_tb), .data_1(data_1_tb), .data_2(data_2_tb),.data_3(data_3_tb),
    .done(done_tb) , .update(update_tb) ,
    .sorted_data(sorted_data_tb) 
);
//_______________________________________________// 
//________________ stimuls ______________________// 
//_______________________________________________// 
`ifdef test2
  `include "TEST_CASES/test_case2.sv"
  `endif

initial begin
    maintask();
end
endmodule 