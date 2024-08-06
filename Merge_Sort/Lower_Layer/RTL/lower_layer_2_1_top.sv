module lower_layer_2_1_ctrl_top #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n,load , 
    input [DATA_WIDTH-1:0] data_0, data_1, data_2,
    output done , update ,
    output[DATA_WIDTH-1:0] sorted_data 
    
);
    // ----------- Internal Signals ---------- //
    wire cmp1,cmp2,swap,sel;
    // ----------- Instantiations ------------ //
     lower_layer_2_1_datapath #( .DATA_WIDTH(DATA_WIDTH)) lower_data_path
     (
     .clk(clk) , .rst_n(rst_n) , .load(load),.swap(swap),.sel(sel),
     .data_0(data_0),.data_1(data_1),.data_2(data_2),
     .sorted_data(sorted_data) ,
     .cmp1(cmp1) , .cmp2(cmp2));  //comprators out

    lower_layer_2_1_ctrl     lower_2_1_ctr_inst (
     .clk(clk),.rst_n(rst_n),.load(load),.cmp1(cmp1),.cmp2(cmp2),
     .swap(swap) ,.update(update),.done(done),.sel(sel)
);
endmodule