//Full Subtractor using full Adder
module add(a,b,ci,s,co);
input a,b,ci;
output s,co;
wire m1,m2;
wire w1,w2,w3;
not k(m1,a);
xor j(m2,m1,b,ci);
not n(s,m2);
and x(w1,m1,b);
and y(w2,b,ci);
and z(w3,m1,ci);
or m (co,w1,w2,w3);
endmodule

module sim;
reg a,b,ci;
wire s,co;

add k(a,b,ci,s,co);
initial
begin
a=0;b=0;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=0;b=0;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=0;b=1;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=0;b=1;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=0;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=0;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=1;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=1;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 $stop;
end
endmodule
