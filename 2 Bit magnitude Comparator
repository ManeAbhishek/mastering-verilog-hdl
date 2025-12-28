//2 Bit magnitude Comparator

module comp2Bit(g,e,l,a,b);
input [1:0]a,b;
output g,e,l;
wire [9:0]w;
not n1(w[0],a[0]);
not n2(w[1],a[1]);
not n3(w[2],b[0]);
not n4(w[3],b[1]);
xnor x1(w[4],a[0],b[0]);
xnor x2(w[5],a[1],b[1]);
and a1(w[6],a[1],w[3]);
and a2(w[7],a[0],w[2]);
and a3(w[8],b[0],w[0]);
and a4(w[9],b[1],w[1]);
and a5(e,w[4],w[5]);
or o1(g,w[6],w[7]);
or o2(l,w[8],w[9]);
endmodule

module sim;
reg [1:0]a,b;
wire g,e,l; 
comp2Bit cm(g,e,l,a,b);
initial
begin
#1 $monitor($time, "a=%b,b=%b,g=%b, e=%b,l=%b",a,b,g,e,l);
end
initial
begin
a=2'd0;b=2'd0;
#5 a=2'd0;b=2'd1;
#5 a=2'd1;b=2'd0;
#5 a=2'd1;b=2'd1;
#5 a=2'd3;b=2'd2;
#5 a=2'd2;b=2'd3;
#5 a=2'd3;b=2'd3;
#5 $stop;
end 
endmodule
