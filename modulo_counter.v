module modulo_counter (
    input reset,
    input clk,
    output stage1, stage2, stage3, out
);

    wire stage1_q;
    wire stage2_q;
    wire stage3_q;
    wire stage1_y;
    wire stage2_y;
    wire stage3_y;
    wire stage1_c;
    wire stage2_c;
    wire reset_c;
    wire out_count;
    wire out_logic;
    wire final_out;
    
    full_adder add0 (
        .A(stage1_q),
        .B(1'b0),
        .C(1'b1),
        .Y(stage1_y),
        .Cout(stage1_c)
    );
    
    full_adder add1 (
        .A(stage2_q),
        .B(1'b0),
        .C(stage1_c),
        .Y(stage2_y),
        .Cout(stage2_c)
    );
    
    full_adder add2 (
        .A(stage3_q),
        .B(1'b0),
        .C(stage2_c),
        .Y(stage3_y)
    );
    
    d_flip_flop d0 (
        .data(stage1_y),
        .store(clk),
        .reset(reset_c),
        .Q(stage1_q)
    );
    
    d_flip_flop d1 (
        .data(stage2_y),
        .store(clk),
        .reset(reset_c),
        .Q(stage2_q)
    );
    
    d_flip_flop d2 (
        .data(stage3_y),
        .store(clk),
        .reset(reset_c),
        .Q(stage3_q)
    );
    
    d_flip_flop d_out (
        .data(out_logic),
        .store(clk),
        .reset(reset),
        .Q(final_out)
    );
    
    assign out_count = (stage1_q & ~stage2_q & stage3_q);
    assign out_logic = (out_count ^ final_out);
    
    assign reset_c = (out_count | reset);
    assign out = final_out;
    assign stage1 = stage1_q;
    assign stage2 = stage2_q;
    assign stage3 = stage3_q;

    

endmodule
