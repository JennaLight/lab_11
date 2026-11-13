module d_other_flip_flop(
    input data,
    input store,
    input reset,
    output reg Q,
    output notQ
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge store, posedge reset) begin
        if (reset) 
            Q <= 0;
        else 
            Q <= data;
    end
    
    assign notQ = ~Q;
    
endmodule