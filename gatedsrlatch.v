module srlatch (
    input wire R,
    input wire S,
    input wire enable,
    output wire Q,
    output wire Qnot
);


assign Q = ~((R & enable) | Qnot);
assign Qnot = ~((S & enable) | Q);

endmodule 



