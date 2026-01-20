/// Create D Flip flop 
// Behavior Modelling
// Case Statement

module D_ff_gate(q,qbar,d,clk);
input d,clk;
output  reg q,qbar;

always@(posedge clk)
begin
case(d)
1'b0: begin
    q<=0;
    qbar<=1;
    end
1'b1: begin
    q<=1;
    qbar<=0;
    end
    endcase
    end
endmodule

module dff_test;
reg d,clk;
wire q,qbar;

D_ff_gate df(q,qbar,d,clk);

always #5 clk=~clk;
initial begin
clk=1;d=1;
#10 d=0;
#10$stop;
$display("Simulation Ended");
$finish;
end
initial begin
        $monitor("At time %t: clk=%b, d=%b | q=%b, qbar=%b", $time, clk, d, q, qbar);
    end
endmodule
