// Code your design here
`timescale 1ns/1ns
module hf_sub(diff,borrow,a,b,c);
  input a,b,c;
  wire t1,t2,t3,t4;
  output diff,borrow;
  xor x1(t1,a,b);
  xor x2(diff,t1,c);
  and a1(t2,~a,b);
  and a2(t3,b,c);
  and a3(t4,~a,c);
  or o1(borrow,t2,t3,t4);

endmodule
  