module comp_1bit(a,b,a_lt_b,a_eq_b,a_gt_b);
input a,b;
output a_lt_b,a_eq_b,a_gt_b;
assign a_lt_b=(~a&b);
assign a_eq_b=~(a^b);
assign a_gt_b=(a&~b);

endmodule 

