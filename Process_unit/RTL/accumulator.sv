module acuumulator #(
    parameter DATA_WIDTH=8
) (
    input clk , rst_n,
    input [DATA_WIDTH-1:0] din,
    output reg [DATA_WIDTH-1:0] result,
    output carry 
);
reg  [DATA_WIDTH-1:0] accum;
reg  [DATA_WIDTH:0] res;
    always @ (posedge clk , negedge rst_n)begin
        if(!rst_n)begin
            accum<='b0;
        end
        else begin
            accum<=res;
        end
    end
    assign {carry,res} = accum + din;
    assign result = res;
endmodule