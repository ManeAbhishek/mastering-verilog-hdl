//Create 4:2 Priority Encoder in Verilog
//Behavior modelling
//Case Statement


module Encpri(y,i);
input [3:0]i;
output reg [1:0]y;

always@(i)
begin

casex(i)

4'b0001:y = 2'b00;
4'b001x:y = 2'b01;
4'b01xx:y = 2'b10;
4'b1xxx:y = 2'b11;
default:$display("Error!");
endcase
end
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
