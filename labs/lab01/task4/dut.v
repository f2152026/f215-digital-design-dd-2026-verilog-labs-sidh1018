module dut(input [63:0] a,input [63:0] b,input cin,output [63:0] sum,output cout);
  // Option 3 active in the final copy. Uncomment only one option when comparing.
  // rca64 U_IMPL (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  // cla64_flat U_IMPL (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  cla64_blocked U_IMPL (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
endmodule
