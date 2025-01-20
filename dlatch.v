module dlatch(
    input wire D,
    output wire Q,
    output wire Qnot


);


assign S = D;
assign R = ~D;
assign Q = ~(R | Qnot);
assign Qnot = ~(S | Q);

endmodule