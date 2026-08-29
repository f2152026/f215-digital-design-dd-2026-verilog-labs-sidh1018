module FA_Gate(
  input a,
  input b,
  input cin,
  output sum,
  output cout
);

  wire ps, pc1, pc2;

  xor #(5,5) (ps,  a,   b);
  and #(5,5) (pc1, a,   b);
  xor #(5,5) (sum, cin, ps);
  and #(5,5) (pc2, cin, ps);
  or  #(5,5) (cout, pc1, pc2);

endmodule
