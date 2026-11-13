module d_flip_flop(
    input data,
    input store,
    input reset,
    output reg Q
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge store) begin
        if (reset) 
            Q <= 0;
        else 
            Q <= data;
    end
    
endmodule