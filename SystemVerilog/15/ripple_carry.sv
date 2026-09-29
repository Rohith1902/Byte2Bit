module ripple_carry(
    input logic [3:0]a,
    input logic [3:0]b,
    input logic cin,
    output logic [3:0] sum,
    output logic cout
);

logic [3:1] c; 

fulladder fa0(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(c[1]));
fulladder fa1(.a(a[1]),.b(b[1]),.c(c[1]),.sum(sum[1]),.carry(c[2]));
fulladder fa2(.a(a[2]),.b(b[2]),.c(c[2]),.sum(sum[2]),.carry(c[3]));
fulladder fa3(.a(a[3]),.b(b[3]),.c(c[3]),.sum(sum[3]),.carry(cout));


endmodule