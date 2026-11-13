module jk_flip_flop (
    input J, K, 
    input store,
    input reset,
    output Q,
    output notQ
);

    wire q_current;
    
    d_other_flip_flop d (
        .data((J & ~q_current) | (~K & q_current)),
        .store(store),
        .reset(reset),
        .Q(q_current),
        .notQ(notQ)
    );
    
    assign Q = q_current;
    
    
endmodule