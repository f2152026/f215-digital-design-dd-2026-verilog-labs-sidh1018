module FA_Gate(
  input a, input b, input cin,
  output sum, output cout
);
  wire ps, pc1, pc2;

  // Same five gates as the original full adder, deliberately reordered.
  xor #(5) (ps, a, b);
  and #(5) (pc2, cin, ps);
  xor #(5) (sum, cin, ps);
  and #(5) (pc1, a, b);
  or  #(5) (cout, pc1, pc2);
endmodule
