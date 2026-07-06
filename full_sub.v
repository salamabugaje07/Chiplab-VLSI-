module half_sub(a,b,diff,brw);
input a,b;
output diff,brw;
assign diff=(a^b);
assign brw=(~a&b);

endmodule 
module full_sub(a,b,c,diff,brw);
input a,b,c;
output diff,brw;
half_sub hs1(a,b,w1,w2);
half_sub hs2(w1,c,diff,w3);
or or1(brw,w2,w3);
endmodule

