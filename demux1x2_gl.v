module demux1x2_gatelevel(a,s,y0,y1);
input a,s;
output y0,y1;
not n1(w1,s);
and a1(y0,w1,a);
and a2(y1, a, s);
	
endmodule
