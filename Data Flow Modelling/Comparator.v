// Comparator circuit
module comp(x,y,z,a,b);
input [3:0]a,b;
output x,y,z;
assign x=(a<b);
assign y=(a>b);
assign z=(a==b);
endmodule
//Test stimulus
module comptb_v;
reg [3:0] a;
reg [3:0] b;
wire x,y,z;
comp  r1(x,y,z,a,b); 
initial begin
#5 a= 4'd0;b=4'd1;
#5 a = 4'd5;b=4'd3;
#5 $stop;
end
endmodule
