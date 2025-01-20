module srlatch (
    input wire R,
    input wire S,
    output wire Q,
    output wire Qnot
);


assign Q = ~(R | Qnot);
assign Qnot = ~(S | Q);

endmodule 



