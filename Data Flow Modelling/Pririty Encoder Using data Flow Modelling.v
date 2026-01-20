//Create 4:2 Priority Encoder in Verilog
//Data Flow modelling

module Encpri(y,i);
input [3:0]i;
output [1:0]y;
wire w1,w2;

assign y[1] = i[3] + i[2];
assign y[0] = i[3] + ((~i[2])&i[1]);


endmodule

module sim1;
reg [3:0]i;
wire [1:0]y;
Encpri uu(y,i);
initial 
begin
i= 4'b0000;
#1 $display("i=%b, y=%b",i,y);
i= 4'b0101;
#1 $display("i=%b, y=%b",i,y);
i= 4'b1100;
#1 $display("i=%b, y=%b",i,y);
i= 4'b00010;
#1 $display("i=%b, y=%b",i,y);
i= 4'b1001;
#1 $display("i=%b, y=%b",i,y);
i= 4'b0110;
#1 $display("i=%b, y=%b",i,y);
i= 4'b1111;
#1 $display("i=%b, y=%b",i,y);
#5 $stop;
end
endmodule
