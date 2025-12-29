// multiplexer 8X1 Using Conditional Operator
module multi8x1cond(y,d,s2,s1,s0);
input [7:0]d;
input s2,s1,s0;
output y;
assign 
y=s2?(s1?(s0?d[7]:d[6]):(s0?d[5]:d[4])):(s1
?(s0?d[3]:d[2]):(s0?d[1]:d[0]));
endmodule
//Test
module multi8x1condtb_v;
reg [7:0] d;
reg s2s1,s0;
wire y;
multi8x1cond u1(y,d,s2,s1,s0);
initial begin
d =8'd0;s2 = 0;s1 = 0;s0 = 0;
#4 d=8'd1;s2=0;s1=0;s0=1;
#4 d=8'd3;s2=0;s1=1;s0=1;
#4 $stop;
end    
endmodule
