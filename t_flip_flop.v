module t_flip_flop (
    input T, 
    input store,
    input reset,
    output Q,
    output notQ
);
    
    jk_flip_flop j(
        .J(T),
        .K(T),
        .store(store),
        .reset(reset),
        .Q(Q),
        .notQ(notQ)
    );

endmodule
    