module lower_layer_2_2_ctrl_top #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n,load , 
    input [DATA_WIDTH-1:0] data_0, data_1, data_2,data_3,
    output done , update ,
    output[DATA_WIDTH-1:0] sorted_data 
    
);
    // ----------- Internal Signals ---------- //
    wire cmp1,cmp2,cmp3,swap_left,swap_right,sel;
    // ----------- Instantiations ------------ //
 lower_layer_2_2_datapath #(
     .DATA_WIDTH(DATA_WIDTH)) lower_layer_2_2_datapath
      (
    .clk(clk) , .rst_n(rst_n) , .load(load),.swap_left(swap_left),.swap_right(swap_right), .sel(sel),
    .data_0(data_0),.data_1(data_1),.data_2(data_2),.data_3(data_3),
    .sorted_data(sorted_data) ,
    .cmp1(cmp1) , .cmp2(cmp2) , .cmp3(cmp3)  //comprators out cmp2 = for left swap , cmp3= for right swap
);

 lower_layer_2_2_ctrl   lower_layer_2_2_ctrl_inst (
    .clk(clk),.rst_n(rst_n),.load(load),.cmp1(cmp1),.cmp2(cmp2),.cmp3(cmp3),
     .swap_left(swap_left),.swap_right(swap_right) ,.update(update),.done(done),.sel(sel)
);
    
endmodule