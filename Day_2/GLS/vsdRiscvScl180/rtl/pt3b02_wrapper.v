module pt3b02_wrapper_0 ( IN, PAD, OE_N );
  input OE_N;
  output IN;
  inout PAD;

  tri   PAD;

  pt3b02 pad ( .I(1'b0), .OEN(OE_N), .PAD(PAD) );
endmodule
module pt3b02_wrapper_1 ( IN, PAD, OE_N );
  input OE_N;
  output IN;
  inout PAD;

  tri   PAD;

  pt3b02 pad ( .I(1'b0), .OEN(OE_N), .PAD(PAD) );
endmodule
module pt3b02_wrapper (IN, PAD, OE_N);
  input  OE_N;
  output IN;
  inout  PAD;

  // For a simple functional sim, model IN as the PAD value.
  //assign IN = PAD;
  tri	 PAD;
  // Instantiate the SCL CIO pad
  pt3b02 pad ( .I(1'b0), .OEN(OE_N), .PAD(PAD) );
endmodule
