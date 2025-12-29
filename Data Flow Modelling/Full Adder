// Full Adder Using Data Flow
module fa(sum,cout,a,b,c);
input a,b,c;
output  sum,cout;
assign sum=a^b^c;
assign cout=c&(a^b)|a&b;
endmodule
//test
module fa_test;
reg a,b,c;
wire  sum,cout;

fa uu(sum,cout,a,b,c);
initial begin
a=0;b=0;c=0;
#5 a=0;b=0;c=1;
#5  a=0;b=1;c=0;
#5  a=0;b=1;c=1;
#5 $stop;
end endmodule
