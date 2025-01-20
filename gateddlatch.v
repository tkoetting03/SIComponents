module srlatch (

    input wire D,
    input wire enable,
    output wire Q,
    output wire Qnot
);


wire S;
wire R;
assign S = D;
assign R = ~D;
assign Q = ~((R & enable) | Qnot);
assign Qnot = ~((S & enable) | Q);

endmodule 



