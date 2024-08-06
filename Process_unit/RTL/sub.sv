module sub #(
    parameter DATA_WIDTH=8
) (
    input   [DATA_WIDTH-1:0] op1,op2,
    output  [DATA_WIDTH-1:0] result
);
    assign result = op1 - op2 ;
    
endmodule