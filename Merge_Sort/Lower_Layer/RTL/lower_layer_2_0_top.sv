module lower_layer_2_0_ctrl_top #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n,load , 
    input [DATA_WIDTH-1:0] data_0, data_1,
    output done , update ,
    output[DATA_WIDTH-1:0] sorted_data 
    
);
    // ----------- Internal Signals ---------- //
    wire cmp2,swap,sel;
    // ----------- Instantiations ------------ //
 lower_layer_2_0_datapath #(
     .DATA_WIDTH(DATA_WIDTH)
 ) lower_layer_2_0_datapath_inst (
     .clk(clk) , .rst_n(rst_n) , .load(load),.swap(swap), .sel(sel),
    .data_0(data_0),.data_1(data_1),
    .sorted_data(sorted_data) ,
    .cmp2(cmp2)  //comprators out

);

 lower_layer_2_0_ctrl  lower_layer_2_0_ctrl_inst (
     .clk(clk),.rst_n(rst_n),.load(load),.cmp2(cmp2),
     .swap(swap) ,.update(update),.done(done),.sel(sel)
);
    
endmodule