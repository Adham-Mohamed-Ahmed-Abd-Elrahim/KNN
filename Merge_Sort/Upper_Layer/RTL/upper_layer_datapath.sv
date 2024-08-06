module upperlayer_datapath #(
    parameter L_SIZE=4 , R_SIZE=4 , DATA_WIDTH=8
) (
    input clk , rst_n , 
    input load_L, load_R, shift_L, shift_R,
    input [DATA_WIDTH-1:0] din1 , din2 ,
    input done_L , done_R ,
    output done_lower, //for from layer  
    output [DATA_WIDTH-1:0] sorted_data
);
    // ------------- Internal Signals ------------- //
    wire [DATA_WIDTH-1:0] sorted_data_L , sorted_data_R;
    wire cmp ;
    wire done_lower_nx,done_lower_pe;
    reg done_lower_r;
    // ------------ posedge detector -------------- //
    always @ (posedge clk , negedge rst_n)begin
        if(!rst_n)begin
            done_lower_r<='b0;
        end
        else begin
            done_lower_r<=done_lower_nx;
        end
    end
    assign done_lower_pe=(~done_lower_r) && (done_lower_nx); // can be timing more optimized    (~done_lower_rr) && (done_lower_r)

    // ------------- Intantiations ---------------- //
 upper_reg  #( .TRAIN_LENGTH(L_SIZE) ,.DATA_WIDTH(DATA_WIDTH)) upper_L_inst
 (.in_data(din1),
  .clk(clk),
  .reset(rst_n) ,
  .load(load_L) , .shift(shift_L),
  .out(sorted_data_L)
);
 upper_reg  #( .TRAIN_LENGTH(L_SIZE) ,.DATA_WIDTH(DATA_WIDTH)) upper_R_inst
 (.in_data(din2),
  .clk(clk),
  .reset(rst_n) ,
  .load(load_R) , .shift(shift_R),
  .out(sorted_data_R)
);
assign done_lower_nx= done_L && done_R ;
assign cmp = (sorted_data_L<sorted_data_R) ? 1'b1:1'b0 ; //  1 = smaller , 0 larger
assign sorted_data = (cmp==1'b1)  ? sorted_data_L:sorted_data_R;
assign done_lower= done_lower_pe;
endmodule