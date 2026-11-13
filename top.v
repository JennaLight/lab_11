module top (
    input btnU, btnC,
    output[6:0] led
);

modulo_counter m (
    .reset(btnU),
    .clk(btnC),
    .stage1(led[3]),
    .stage2(led[4]),
    .stage3(led[5]),
    .out(led[6])
);

ripple_counter r (
    .reset(btnU),
    .clk(btnC),
    .stage1(led[0]),
    .stage2(led[1]),
    .stage3(led[2])
);

endmodule