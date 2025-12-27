//4-Bit Ripple carry full Adder

module Fa4bit(S,Co,A,B,Ci);
input [3:0]A,B;
input Ci;
output Co;
output [3:0]S;
wire c1,c2,c3;
add Fa0(A[0],B[0],Ci,S[0],c1);
add Fa1(A[1],B[1],c1,S[1],c2);
add Fa2(A[2],B[2],c2,S[2],c3);
add Fa3(A[3],B[3],c3,S[3],Co);
endmodule



module add(a,b,ci,s,co);
input a,b,ci;
output s,co;
wire w1,w2,w3;
xor j(s,a,b,ci);
and x(w1,a,b);
and y(w2,b,ci);
and z(w3,a,ci);
or m (co,w1,w2,w3);
endmodule

module sim;
reg [3:0]a,b;
reg Ci;
wire [3:0]S;
wire Co;

Fa4bit u(S,Co,a,b,Ci);
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
