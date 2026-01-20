//Mux4x1 
//behavior Level

module mux41( a, b, c, d, s, out);

input wire a, b, c, d;
input wire [1:0]s;
output reg out;

always @ (a or b or c or d or s)
begin

case (s)
2'b00 : out <= a;
2'b01 : out <= b;
2'b10 : out <= c;
2'b11 : out <= d;
endcase

end

endmodule
module mux41_test;
reg a, b, c, d;
reg [1:0]s;
wire  out;
mux41 uu( a, b, c, d, s, out);
initial begin
a=1'b0;b=1'b1;c=1'b0;d=1'b1;s=2'b00;
#5 s=2'b01;
#5 s=2'b10;
#5 s=2'b11;
#5 $stop;
end endmodule
