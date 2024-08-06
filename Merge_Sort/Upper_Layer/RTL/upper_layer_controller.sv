module upper_layer_ctrl #(
    parameter  L_SIZE=4 , R_SIZE=4 
) (
    input clk , rst_n,
    input done_lower , load_L,load_R, cmp,
    output done_upper,update , shift_en_L ,shift_en_R 

);
    
    // ------------- Internal Signals ------------- //
    enum bit  {IDLE,PROCESS } next_state , current_state ;
    reg [$clog2(L_SIZE)-1:0] counter_L_nx,counter_L_r;
    reg [$clog2(R_SIZE)-1:0] counter_R_nx,counter_R_r;
    reg done_upper_nx , done_upper_r, update_nx , update_r,shift_en_L_nx,shift_en_R_nx ; //shifts are asynchrounous 
    // ------------- SEQ ALways block ------------ //
    always @ (posedge clk , negedge rst_n)begin
        if(!rst_n)begin
            current_state                       <=IDLE;
            done_upper_r                        <='b0;
            update_r                            <='b0;
            counter_L_r                         <='b0;
            counter_R_r                         <='b0;
            //shift_en_R_r                        <='b0;
            //shift_en_L_r                        <='b0;
        end
        else begin
            current_state                       <=next_state;
            done_upper_r                        <=done_upper_nx;
            update_r                            <=update_nx;
            counter_L_r                         <=counter_L_nx;
            counter_R_r                         <=counter_R_nx;  
            //shift_en_R_r                        <=shift_en_R_nx;
            //shift_en_L_r                        <=shift_en_L_nx;
        end
    end 

    // ------------- SEQ ALways block ------------ //
    always @ (*)begin
            next_state              =current_state;
            done_upper_nx           =done_upper_r;
            update_nx               =update_r;
            counter_L_nx            =counter_L_r;
            counter_R_nx            =counter_R_r;
            //shift_en_R_nx           =shift_en_R_nx;
            //shift_en_L_nx           =
        case(current_state)
        IDLE:begin
            if(done_lower==1'b1)begin
                next_state=PROCESS;
                update_nx=1'b1;
            end
        end
        PROCESS:begin
            if((counter_L_r==L_SIZE) && (counter_R_r==R_SIZE))begin
                counter_L_nx='b0; 
                counter_R_nx='b0;
                shift_en_L_nx='b0;
                shift_en_R_nx='b0;
                done_upper_nx=1'b1;
                update_nx='b0;
            end
            else begin
                if(counter_L_r==L_SIZE)begin
                    shift_en_L_nx='b0;
                    shift_en_R_nx='b1;
                    counter_R_nx=counter_R_r+1;
                end
                else if (counter_R_r==R_SIZE)begin
                    shift_en_R_nx='b0;
                    shift_en_L_nx='b1;
                    counter_L_nx=counter_L_r+1;
                end
                else if (cmp==1'b1)begin
                    counter_L_nx=counter_L_r+1;
                    shift_en_L_nx=1'b1;
                    shift_en_R_nx='b0;
                end
                else if (cmp==1'b0)begin
                    counter_L_nx=counter_R_r+1;
                    shift_en_L_nx=1'b0;
                    shift_en_R_nx=1'b1;
                end
            end
        end
            endcase

    end
    // ------------- Output Assigning ------------- //
    assign  done_upper     =   done_upper_r;
    assign  update         =   update_r ;
    assign  shift_en_L     =   shift_en_L_nx;
    assign  shift_en_R     =   shift_en_R_nx;
      
endmodule