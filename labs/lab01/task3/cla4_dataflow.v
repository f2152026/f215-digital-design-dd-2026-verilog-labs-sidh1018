module cla4_dataflow(
  input [3:0] a, input [3:0] b, input cin,
  output [3:0] sum, output cout
);
  wire [3:0] p,g;
  wire [3:0] c;
  assign #(2) p = a ^ b;
  assign #(2) g = a & b;
  assign #(2) c[0] = g[0] | (p[0] & cin);
  assign #(2) c[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
  assign #(2) c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
  assign #(2) c[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);
  assign #(2) cout = c[3];
  assign #(2) sum = p ^ {c[2:0],cin};
endmodule
