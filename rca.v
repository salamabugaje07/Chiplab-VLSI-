module fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
assign sum=(a^b^cin);
assign cout=(a&b|b^cin|a^cin);

endmodule 

module rca(input[3:0]a,b,input cin,output[3:0]sum,output cout);
wire c0,c1,c2;
fulladder fa1(a[0],b[0],cin,sum[0],c0);
fulladder fa2(a[1],b[1],cin,sum[1],c1);
fulladder fa3(a[2],b[2],cin,sum[2],c2);
fulladder fa4(a[3],b[3],cin,sum[3],cout);
endmodule

