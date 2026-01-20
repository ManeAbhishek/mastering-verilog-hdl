//Full Adder 
//behavior Level 
//Case Statement

module FA(S,Cout,A,B,Cin);

input A,B,Cin;
output reg S,Cout;

always @(A or B or Cin)
  begin 

   case ({A,B,Cin}) 
     3'b000: begin S = 1'b0; Cout = 1'b0; end 
     3'b001: begin S = 1; Cout = 0; end 
     3'b010: begin S = 1; Cout = 0; end 
     3'b011: begin S = 1'b0; Cout = 1'b1; end 
     3'b100: begin S = 1; Cout = 0; end 
     3'b101: begin S = 0; Cout = 1; end 
     3'b110: begin S = 0; Cout = 1; end 
     3'b111: begin S = 1; Cout = 1; end 
   endcase 

  end
endmodule



module sim;
reg a,b,ci;
wire s,co;

FA i(s,co,a,b,ci);
initial
begin
a=0;b=0;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=0;b=0;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=0;b=1;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=0;b=1;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=0;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=0;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=1;ci=0;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 a=1;b=1;ci=1;
#1 $display("a=%b,b=%b,ci=%b, s=%b,co=%b",a,b,ci,s,co);
#5 $stop;
end
endmodule
