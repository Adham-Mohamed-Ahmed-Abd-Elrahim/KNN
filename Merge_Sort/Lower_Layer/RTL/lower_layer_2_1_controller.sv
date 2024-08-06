module lower_layer_2_1_ctrl  (
    input clk,rst_n,load,cmp1,cmp2,
    output swap ,update,done,sel
);
    
    // ----------------- Internal Signals ------------- //
    reg swap_nx,swap_r; 
    reg update_nx,update_r;
    reg done_nx,done_r;
    reg sel_nx,sel_r;
    reg [1:0] small_count_nx ,small_count_r , large_count_nx, large_count_r;
    reg [1:0] data_count_nx,data_count_r;

    // ### States ### //
    enum bit [1:0] {IDLE , CMP2 , CMP1 ,WAIT} current_state , next_state;

    // ---------------- Seq Always Block -------------- //
    always @ (posedge clk , negedge rst_n)begin
        if(!rst_n)begin
            current_state<=IDLE;
            swap_r<='b0;
            update_r<='b0;
            done_r<='b0;
            sel_r<='b0;
            data_count_r<='b0;
            large_count_r<='b0;
            small_count_r<='b0;
        end
        else begin
            current_state<=next_state;
            swap_r<=swap_nx;
            update_r<=update_nx;
            done_r<=done_nx;
            sel_r<=sel_nx; 
            data_count_r<=data_count_nx;
            large_count_r<=large_count_nx;   
            small_count_r<=small_count_nx;

        end
    end
    // ---------------- COMB Always Block -------------- //
 
        
    always @ (*)begin
        next_state=current_state;
        swap_nx='b0;
        update_nx=update_r;
        done_nx=done_r;              //level
        sel_nx=sel_r;  
        data_count_nx = data_count_r;
        small_count_nx =small_count_r;
        large_count_nx =large_count_r;


        case(current_state)
            IDLE:begin
                if(load==1'b1)begin
                    next_state=CMP2;
                    done_nx='b0;   //TO disable level pulse
                end
            end
            CMP2:begin
                if(cmp2)begin //larger
                    swap_nx=1'b1;
                    next_state=WAIT;
                end
                else begin
                    next_state=CMP1;
                end
            end
            WAIT:begin
                     next_state=CMP1;
            end
            CMP1:begin
                if(data_count_r==2'd3)begin
                    next_state=IDLE;
                    done_nx=1'b1;
                    update_nx=1'b0;
                    sel_nx=1'b0;
                    data_count_nx='b0;
                    large_count_nx='b0;
                    small_count_nx='b0;
                end
                else begin
                    if(swap_r==1'b1)begin // to stop capturing old data 
                        update_nx=1'b0;
                    end
                    else if (large_count_r==2'd2)begin
                        update_nx=1'b1;
                        data_count_nx=data_count_r+1;
                        sel_nx=1'b1;
                        
                    end
                    else if (small_count_r==2'd1)begin
                        sel_nx=1'b0;
                        update_nx=1'b1;
                        data_count_nx=data_count_r+1;
                        large_count_nx=large_count_r+1;
                        swap_nx=1'b1;
                        if(large_count_r==2'd1)begin
                            swap_nx=1'b0;
                        end
                    end
                    else if (cmp1==1'b0)begin  //Larger 
                        sel_nx=1'b0;
                        swap_nx=1'b1;
                        update_nx=1'b1;
                        large_count_nx=large_count_r+1;
                        data_count_nx=data_count_r+1;
                        if(large_count_r==2'd1)begin
                            swap_nx=1'b0;
                        end
                    end
                    else if (cmp1==1'b1)begin //smaller
                        sel_nx=1'b1;
                        data_count_nx=data_count_r+1;
                        small_count_nx=small_count_r+1;
                        update_nx=1'b1;
                    end
                end
            end
        endcase
    end
    // ------------- Output assignment ------------ //
    assign swap =swap_r;
    assign update = update_r;
    assign sel = sel_r;
    assign done = done_r;
endmodule