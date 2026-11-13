module ripple_counter (
    input reset,
    input clk,
    output stage1, stage2, stage3
);

    wire stage1_q;
    wire stage2_q;
    wire stage3_q;
    
    t_flip_flop t1 (
        .store(clk),
        .T(1'b1),
        .reset(reset),
        .Q(stage1_q)
    );
    
    t_flip_flop t2 (
        .store(stage1_q),
        .T(1'b1),
        .reset(reset),
        .Q(stage2_q)
    );
    
    t_flip_flop t3 (
        .store(stage2_q),
        .T(1'b1),
        .reset(reset),
        .Q(stage3_q)
    );
    
    assign stage1 = stage1_q;
    assign stage2 = stage2_q;
    assign stage3 = stage3_q;

endmodule