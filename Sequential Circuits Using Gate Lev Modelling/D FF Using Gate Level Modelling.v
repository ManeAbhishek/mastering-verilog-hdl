///Create D Flip flop 
//Gate Lev. Modelling

module D_ff_gate(q,qbar,d,clk);
input d,clk;
output q,qbar;
wire w1,w2,w3;

not n1(w1,d);
nand n2(w2,d,clk);
nand n3(w3,w1,clk);
nand n4(q,w2,qbar);
nand n5(qbar,w3,q);
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

