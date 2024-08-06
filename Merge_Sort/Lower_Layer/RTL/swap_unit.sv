module swap_unit #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n,load,swap,
    input       [DATA_WIDTH-1:0] data_1 ,
    input       [DATA_WIDTH-1:0] data_2 ,
    output reg  [DATA_WIDTH-1:0] s_data_1 ,
    output reg  [DATA_WIDTH-1:0] s_data_2 
);
    always @ (posedge clk , negedge rst_n)begin
        if(!rst_n)begin
            s_data_1<='b0;
            s_data_2<='b0;
        end
        else if  (swap==1'b1)begin
            s_data_1<=s_data_2;
            s_data_2<=s_data_1;
        end
        else if (load==1'b1)begin
            s_data_1<=data_1;
            s_data_2<=data_2;  
        end
  
    end
endmodule