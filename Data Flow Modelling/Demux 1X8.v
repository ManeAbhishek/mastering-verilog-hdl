//1:8 demultiplexer
module demux(d,di,a,b,c);
input a,b,c,di;
output [7:0]d;
assign d[0]=(di&~a&~b&~c);
assign d[1]=(di&~a&~b&c);
assign d[2]=(di&~a&b&~c);
assign d[3]=(di&~a&b&c);
assign d[4]=(di&a&~b&~c);
assign d[5]=(di&a&~b&c);
assign d[6]=(di&a&b&~c);
assign d[7]=(di&a&b&c);
endmodule
//Test stimulus
module demuxtb_v;
reg di,a,b,c;
wire [7:0] d;
demux u1(d,di,a,b,c);
initial begin
di=1;a=0;b=0;c=0;
#3 di=1;a=0;b=0;c=1;
#3 di=1;a=0;b=1;c=0;
#3 di=1;a=0;b=1;c=1;
#3 $stop;
end  
endmodule
