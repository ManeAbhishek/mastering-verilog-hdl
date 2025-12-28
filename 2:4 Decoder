//2:4 Decoder

module dec2x4(y,a,b,e);
input a,b,e;
output [3:0]y;
wire w1,w2;

not n1(w1,a);
not n2(w2,b);
and a1(y[0],e,w1,w2);
and a2(y[1],e,w1,b);
and a3(y[2],e,a,w2);
and a4(y[3],e,a,b);
endmodule

module sim;
reg a,b,e;
wire [3:0]y;
dec2x4 d(y,a,b,e);
initial 
begin
a=0;b=0;e=0;
#1 $display("a=%b,b=%b, y=%b",a,b,y);
a=0;b=0;e=1;
#1 $display("a=%b,b=%b, y=%b",a,b,y);
#5 a=0;b=1;e=1;
#1  $display("a=%b,b=%b, y=%b",a,b,y);
#5 a=1;b=0;e=1;
#1 $display("a=%b,b=%b, y=%b",a,b,y);
#5 a=1;b=1;e=1;
#1 $display("a=%b,b=%b, y=%b",a,b,y);
#5 $stop;
end
endmodule
