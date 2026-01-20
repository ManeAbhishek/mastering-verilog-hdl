//1 Bit Comparator

module Comp1bit(l,e,g,a,b);
input a,b;
output l,e,g;
wire w1,w2;
not n1(w1,a);
not n2(w2,b);
and a1(l,w1,b);
xnor x1(e,a,b);
and a2(g,a,w2);
endmodule

module sim;
reg a,b;
wire l,g,e;
Comp1bit c(l,e,g,a,b);
initial 
begin
a=0;b=0;
#1 $display("a=%b,b=%b, l=%b, e=%b, g=%b",a,b,l,e,g);
#5 a=0;b=1;
#1 $display("a=%b,b=%b, l=%b, e=%b, g=%b",a,b,l,e,g);
#5 a=1;b=0;
#1 $display("a=%b,b=%b, l=%b, e=%b, g=%b",a,b,l,e,g);
#5 a=1;b=1;
#1 $display("a=%b,b=%b, l=%b, e=%b, g=%b",a,b,l,e,g);
#5 $stop;
end
endmodule
