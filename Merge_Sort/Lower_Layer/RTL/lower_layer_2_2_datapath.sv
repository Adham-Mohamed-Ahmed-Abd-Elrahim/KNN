module lower_layer_2_2_datapath #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n , load,swap_left,swap_right, sel,
    input [DATA_WIDTH-1:0]  data_0,data_1,data_2,data_3,
    output [DATA_WIDTH-1:0] sorted_data ,
    output cmp1 , cmp2 , cmp3  //comprators out cmp2 = for left swap , cmp3= for right swap
);

    // ----------------- Internal Signals ------------- //
    wire      [DATA_WIDTH-1:0]    data_0_r;
    wire      [DATA_WIDTH-1:0]    data_1_r;
    wire      [DATA_WIDTH-1:0]    data_2_r;
    wire      [DATA_WIDTH-1:0]    data_3_r; 

    // ------------------ Instantiations  ------------- //
     swap_unit #(  .DATA_WIDTH(DATA_WIDTH)) swap_unit0_inst (
     .clk(clk) , .rst_n(rst_n),.load(load),.swap(swap_left),
    .data_1(data_0) ,
    .data_2(data_1) ,
    .s_data_1(data_0_r) ,
    .s_data_2(data_1_r) 
);
     swap_unit #(  .DATA_WIDTH(DATA_WIDTH)) swap_unit1_inst (
     .clk(clk) , .rst_n(rst_n),.load(load),.swap(swap_right),
    .data_1(data_2) ,
    .data_2(data_3) ,
    .s_data_1(data_2_r) ,
    .s_data_2(data_3_r) 
);

     // ----------------- Processing      ------------- //
    assign cmp1= data_0_r<data_2_r ? 1'b1:1'b0; // 1->smaller  , 0 ->larger
    assign cmp2= data_0_r>data_1_r ? 1'b1:1'b0; // 1 ->larger , 0 -> smaller 
    assign cmp3= data_2_r>data_3_r ? 1'b1:1'b0; // 1 ->larger , 0 -> smaller 
    assign sorted_data = (sel==1'b1) ? data_0_r:data_2_r;
endmodule