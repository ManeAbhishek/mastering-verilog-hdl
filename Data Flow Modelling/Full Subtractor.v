// Full Subtractor
module fullsub(d,bo,a,b,bi);
input a,b,bi;
output d,bo;
assign d=a^b^c;
assign bo=(~a&b)|(~(a^b));
endmodule

//Test
module fullsubtb_v;
reg a,b,bi;
wire d,bo;
fullsub u1(d,bo,a,b,bi);
initial begin
$monitor($time,"d=%b,bo=%b,a=%b,b=%b,bi=
%b",d,bo,a,b,bi);
a =0;b=0;bi=0;
#3 a=0;b=0;bi=1;
#3 a=0;b=1;bi=0;
#3 a=0;b=1;bi=1;
#3 a=1;b=0;bi=0;
#3 $stop;
end
endmodule
