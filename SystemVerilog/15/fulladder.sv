module fulladder(
    input logic a,b,c,
    output logic sum,carry
);

assign sum = a^b^c;
assign carry = (a&b)|(c&b)|(c&a);

endmodule


