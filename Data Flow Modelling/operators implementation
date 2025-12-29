//operators implementation

module gate1(y1,y2,y3,y4,y5,a,b,c);        
input [3:0]a,b;
input c;
output y1,y2;
output [3:0]y3;
output [7:0]y4;
output [4:0]y5;
assign y1=(a<=b);
assign y2=a&&b;
assign y3=a|b;
assign y4={2{a}};
assign y5={a,c};
endmodule

module gate11tb_v;
reg [3:0] a;
reg [3:0] b;
reg c;
wire y1;
wire y2;
wire [3:0]y3;
wire [7:0]y4;
wire [4:0]y5;
gate1 g1(y1,y2,y3,y4,y5,a,b,c);
initial begin
$monitor($time,"y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,a=%b,b=%b,c=%b",y1,y2,y3,y4,y5,a,b,c);
a =4'b1010;b=4'b1101;c=0;
#4 a=4'b0101;b=4'b1111;c=1;
#4 $stop;
end    
endmodule
