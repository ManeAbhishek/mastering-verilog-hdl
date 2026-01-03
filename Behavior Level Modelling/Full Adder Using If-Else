//Full Adder 
//behavior Level 
//If-Else Statement

module FA(S,Cout,A,B,Cin);

input A,B,Cin;
output reg S,Cout;

always @(*)
begin
if(A==0 && B==0 && Cin==0)
begin
S=0;
Cout=0;
end
else if(A==0 && B==0 && Cin==1)
begin
S=1;
Cout=0;
end
else if(A==0 && B==1 && Cin==0)
begin
S=1;
Cout=0;
end
else if(A==0 && B==1 && Cin==1)
begin
S=0;
Cout=1;
end
else if(A==1 && B==0 && Cin==0)
begin
S=1;
Cout=0;
end
else if(A==1 && B==0 && Cin==1)
begin
S=0;
Cout=1;
end
else if(A==1 && B==1 && Cin==0)
begin
S=0;
Cout=1;
end
else if(A==1 && B==1 && Cin==1)
begin
S=1;
Cout=1;
end
end
endmodule



module sim;
reg a,b,ci;
wire s,co;

FA i(s,co,a,b,ci);
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
