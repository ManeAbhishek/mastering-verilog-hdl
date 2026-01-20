module mux41(out,d,s);
input [3:0]d;
input [1:0]s;
output out;
assign out=(~s[1]&~s[0]&d[0])|(~s[1]&s[0]&d[1])|(s[1]&~s[0]&d[2])|(s[1]&s[0]&d[3]);
// assign out=S[1]?(S[0]?d[3]:d[2]):S[0]?d[1]:d[0];  
endmodule 


//test
module mux41_test;
reg [3:0]d;
reg [1:0]s;
wire  out;
mux41 uu(out,d,s);
initial begin
d=4’b1010;s=2’b00;
#5 s=2’b01;
#5 s=2’b10;
#5 s=2’b11;
#5 $stop;
end endmodule
