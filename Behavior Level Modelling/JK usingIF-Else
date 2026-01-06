///Create JK Flip flop 
//Behavior Lev modelling Using If-Else Statement

module jk_ff(j,k,clk,q,qbar);
input j,k,clk;
output reg q,qbar;

always@(posedge clk)
begin
if(j==0 && k==0)
begin
q<=q;
qbar<=qbar;
end
else if(j==0 && k==1)
begin
q<=0;
qbar<=1;
end
else if(j==1 && k==0)
begin
q<=1;
qbar<=0;
end
else 
begin
q<=~q;
qbar<=q;
end
end
endmodule

module jk_tb;
reg j,k,clk;
wire q,qbar;
jk_ff jkf(j,k,clk,q,qbar);

always #5 clk=~clk;
initial 
begin
clk=1;j=1;k=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;
#10 $stop;
$display("Simulation finished");
$finish;
end
initial begin
        $monitor("At time %t: clk=%b, j=%b, k=%b | q=%b, qbar=%b", $time, clk, j, k, q, qbar);
    end
endmodule
