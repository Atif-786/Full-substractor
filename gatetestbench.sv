// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module tb_full_add;
  reg a;
  reg b; 
  reg c;
  wire diff;
  wire borrow;
  hf_sub fal(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
  initial
    begin
      $monitor("$time = %b, a= %b, b= %b,c=%b, difference = %b,borrow= %b",$time,a,b,c,diff,borrow);
    end
  
  initial 
    begin 
     #10 a =1'b0; b=1'b0;c=1'b0;
     #10 a =1'b0; b=1'b0;c=1'b1;
     #10 a =1'b0; b=1'b1;c=1'b0;
     #10 a =1'b0; b=1'b1;c=1'b1; 
      #10 a =1'b1; b=1'b0;c=1'b0; 
      #10 a =1'b1; b=1'b0;c=1'b1; 
      #10 a =1'b1; b=1'b1;c=1'b1; 
    end 
  initial 
    begin 
      $dumpfile("fulladd.vcd");
      $dumpvars;
    end
endmodule
