//4 Bit magnitude Comparator

module ckt1(x,y,z,a,b);
input a,b;
output x,y,z;
wire w1,w2;
not n1(w1,a);
not n2(w2,b);
and a1(x,w1,b);
and a2(y,w2,a);
nor n3(z,x,y);
endmodule

module comp4Bit(g,e,l,a,b);
input [3:0]a,b;
output g,e,l;
wire [17:0]w;
ckt1 m1(w[0],w[2],w[1],a[3],b[3]);
ckt1 m2(w[3],w[5],w[4],a[2],b[2]);
ckt1 m3(w[6],w[8],w[7],a[1],b[1]);
ckt1 m4(w[9],w[11],w[10],a[0],b[0]);
and a5(w[12],w[1],w[3]);
and a6(w[13],w[1],w[4],w[6]);
and a7(w[14],w[1],w[4],w[7],w[9]);
and a8(w[15],w[1],w[4],w[7],w[11]);
and a9(w[16],w[1],w[4],w[8]);
and a10(w[17],w[1],w[5]);
and a4(e,w[1],w[4],w[7],w[10]); 
or o1(l,w[0],w[12],w[13],w[14]);
or o2(g,w[2],w[17],w[16],w[15]);

endmodule

module sim;
reg [3:0]a,b;
wire g,e,l; 
comp4Bit cm(g,e,l,a,b);
initial
begin
#1 $monitor($time, "a=%b,b=%b,g=%b, e=%b,l=%b",a,b,g,e,l);
end
initial
begin
a=4'd0;b=4'd0;
#5 a=4'd3;b=4'd7;
#5 a=4'd14;b=4'd11;
#5 a=4'd8;b=4'd9;
#5 a=4'd7;b=4'd5;
#5 a=4'd10;b=4'd10;
#5 a=4'd11;b=4'd15;
#5 $stop;
end 
endmodule
