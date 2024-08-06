module lower_layer_2_0_datapath #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n , load,swap, sel,
    input [DATA_WIDTH-1:0]  data_0,data_1,
    output [DATA_WIDTH-1:0] sorted_data ,
    output   cmp2  //comprators out

);
    

    // ----------------- Internal Signals ------------- //
    reg      [DATA_WIDTH-1:0]    data_0_r;
    wire     [DATA_WIDTH-1:0]    data_1_r;


    // ------------------ Instantiations  ------------- //
     swap_unit #(  .DATA_WIDTH(DATA_WIDTH)) swap_unit_inst (
     .clk(clk) , .rst_n(rst_n),.load(load),.swap(swap),
    .data_1(data_1) ,
    .data_2(data_2) ,
    .s_data_1(data_0_r) ,
    .s_data_2(data_1_r) 
);
     // ----------------- Processing      ------------- //
    assign cmp2= data_0_r>data_1_r ? 1'b1:1'b0; // 1 ->larger , 0 -> smaller 
    assign sorted_data = data_1_r;
endmodule