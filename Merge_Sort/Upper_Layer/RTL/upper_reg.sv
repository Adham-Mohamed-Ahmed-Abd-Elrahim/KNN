module upper_reg 
#(parameter TRAIN_LENGTH=3 ,DATA_WIDTH=8)
 (input    [DATA_WIDTH-1:0]    in_data,
 input      clk,
 input      reset ,
 input      load , shift,
 output   [DATA_WIDTH-1:0] out


);
    genvar i ;
wire [DATA_WIDTH-1:0]out_data [0:TRAIN_LENGTH-1];
wire [DATA_WIDTH-1:0] in_0;
assign in_0 = (load==1'b1) ? in_data:{DATA_WIDTH{1'b0}}; 
    generate 
        for(i=0;i<(TRAIN_LENGTH);i=i+1)begin :for_loop
            if(i==0) begin
               delay_unit #(.DATA_WIDTH(DATA_WIDTH)) u0   (.clk(clk),.reset(reset),.shift(shift),.load(load) ,.in_data(in_0), .out_data(out_data[i]) );
            end
            else  begin
                delay_unit #(.DATA_WIDTH(DATA_WIDTH)) u1  (.clk(clk),.reset(reset),.shift(shift),.load(load) , .in_data(out_data[i-1]), .out_data(out_data[i]) );
            end
        end
    endgenerate

//assigning 
    assign out=out_data[TRAIN_LENGTH-1];

endmodule