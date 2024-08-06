module delay_unit #(parameter DATA_WIDTH=32 )
(
input clk,
input reset, load , shift ,
input  [DATA_WIDTH-1:0] in_data,
output reg  [DATA_WIDTH-1:0] out_data
);
always @ (posedge clk, negedge reset )begin
  if(reset!=1'b1) begin
    out_data<='b0;
  end
  else if(shift||load) begin
    out_data<= in_data;
  end
end
endmodule