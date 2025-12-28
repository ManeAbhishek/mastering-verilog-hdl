//3:8 Decoder

module dec2x4(y,a,b,c);
input a,b,c;
output [7:0]y;
wire w1,w2,w3;

not n1(w1,a);
not n2(w2,b);
not n3(w3,c);

and a1(y[0],w1,w2,w3);
and a2(y[1],w1,w2,c);
and a3(y[2],w1,b,w3);
and a4(y[3],w1,b,c);
and a5(y[4],a,w2,w3);
and a6(y[5],a,w2,c);
and a7(y[6],a,b,w3);
and a8(y[7],a,b,c);
endmodule

module sim;
reg a,b,c;
wire [7:0]y;
dec2x4 d(y,a,b,c);
initial 
begin
a=0;b=0;c=0;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
a=0;b=0;c=1;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
a=0;b=1;c=0;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
a=0;b=1;c=1;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
a=1;b=0;c=0;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
a=1;b=0;c=1;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
a=1;b=1;c=0;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
a=1;b=1;c=1;
#1 $display("a=%b,b=%b,c=%b, y=%b",a,b,c,y);
#5 $stop;
end
endmodule
