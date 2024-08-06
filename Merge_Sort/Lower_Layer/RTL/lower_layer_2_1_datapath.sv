module lower_layer_2_1_datapath #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n , load,swap, sel,
    input [DATA_WIDTH-1:0]  data_0,data_1,data_2,
    output [DATA_WIDTH-1:0] sorted_data ,
    output cmp1 , cmp2  //comprators out

);
    

    // ----------------- Internal Signals ------------- //
    reg      [DATA_WIDTH-1:0]    data_0_r;
    wire     [DATA_WIDTH-1:0]    data_1_r;
    wire     [DATA_WIDTH-1:0]    data_2_r;
    // ----------------- D0 register      ------------- //
    always @ (posedge clk , negedge rst_n)begin
        if(!rst_n)begin
            data_0_r<= 'b0;
            end
        else if(load==1'b1)begin
            data_0_r<=data_0;
        end
    end

    // ------------------ Instantiations  ------------- //
     swap_unit #(  .DATA_WIDTH(DATA_WIDTH)) swap_unit_inst (
     .clk(clk) , .rst_n(rst_n),.load(load),.swap(swap),
    .data_1(data_1) ,
    .data_2(data_2) ,
    .s_data_1(data_1_r) ,
    .s_data_2(data_2_r) 
);
     // ----------------- Processing      ------------- //
    assign cmp1= data_0_r<data_1_r ? 1'b1:1'b0; // 1->smaller  , 0 ->larger
    assign cmp2= data_1_r>data_2_r ? 1'b1:1'b0; // 1 ->larger , 0 -> smaller 
    assign sorted_data = (sel==1'b1) ? data_0_r:data_1_r;
endmodule