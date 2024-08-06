module lower_layer_2_0_ctrl  (
    input clk,rst_n,load,cmp2,
    output swap ,update,done,sel
);
    
    // ----------------- Internal Signals ------------- //
    reg swap_nx,swap_r; 
    reg update_nx,update_r;
    reg done_nx,done_r;
    reg sel_nx,sel_r;
    reg [1:0] data_count_nx, data_count_r;
    
    // ### States ### //
    enum bit  {IDLE , SWAP} current_state , next_state;
    reg  swap_done_nx,swap_done_r;
    // ---------------- Seq Always Block -------------- //
    always @ (posedge clk , negedge rst_n)begin
        if(!rst_n)begin
            current_state<=IDLE;
            swap_r<='b0;
            update_r<='b0;
            done_r<='b0;
            sel_r<='b0;
            data_count_r<='b0;
            swap_done_r='b0;
        end
        else begin
            current_state<=next_state;
            swap_r<=swap_nx;
            update_r<=update_nx;
            done_r<=done_nx;
            sel_r<=sel_nx; 
            data_count_r<=data_count_nx;
            swap_done_r=swap_done_nx;

        end
    end
    // ---------------- COMB Always Block -------------- //
 
        
    always @ (*)begin
        next_state=current_state;
        swap_nx=swap_r;
        //swap_done_
        update_nx=update_r;
        done_nx=done_r;              //level
        sel_nx=sel_r;  
        data_count_nx=data_count_r;
        swap_done_nx=swap_done_r;

        case(current_state)
            IDLE:begin
                if(load==1'b1)begin
                    next_state=SWAP;
                    done_nx='b0;   //TO disable level pulse
                end
            end
            SWAP:begin
                if(data_count_r==2'd2)begin
                    swap_nx=1'b0;
                    update_nx=1'b0;
                    done_nx=1'b1;
                    next_state=IDLE;
                end
                if(cmp2 && !(swap_done_r))begin
                    swap_nx=1'b1;
                    swap_done_nx=1'b1;
                end
                else begin
                    update_nx=1'b1;
                    swap_nx=1'b1;
                    data_count_nx=data_count_r+1;
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