// Carry lookahead Full Adder Using Data Flow

module fulladd4(s, cout, a, b, ci);
output [3:0] s;
output cout;
input [3:0] a,b;
input ci;
wire p0,g0,p1,g1,p2,g2,p3,g3;
wire c0,c1,c2;
assign p0=a[0]^b[0];
assign p1=a[1]^b[1];
assign p2=a[2]^b[2];
assign p3=a[3]^b[3];
assign g0 = a[0] & b[0];
assign g1 = a[1] & b[1];
assign g2 = a[2] & b[2];
assign g3 = a[3]&b[3];
assign c0=g0|(p0&ci);
assign c1=g1|(p1&g0)|(p1&p0&ci);
assign c2=g2|(p2&g1)|(p2&p1&g1)|(p2&p1&p0&ci);
assign  cout=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&ci);
assign s[0]=p0^ci;
assign s[1]=p1^c0;
assign s[2]=p2^c1;
assign s[3]=p3^c2;
endmodule

module sim;
reg [3:0]a,b;
reg Ci;
wire [3:0]S;
wire Co;

fulladd4 u(S,Co,a,b,Ci);
initial
begin
#1 $monitor($time, "a=%b,b=%b,Ci=%b, S=%b,Co=%b",a,b,Ci,S,Co);
end
initial
begin
a = 4'd0; b= 4'd0; Ci = 0;
#5 a = 4'd3;b= 4'd4;Ci=0;
#5 a=4'd2;b=4'd5;Ci=0;
#5 a=4'd9;b=4'd9;Ci=0;
#5 a=4'd10;b=4'd15;Ci=0;
#5 a=4'd10;b=4'd5;Ci=1;
#5 $stop;
end
endmodule
