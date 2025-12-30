//Create SR Flip flop 
//Gate Lev modelling

module SR_ff(q,qbar,s,r,clk);

input s,r,clk;
output q,qbar;
wire w1,w2;

nand n1(w1,s,clk);
nand n2(w2,r,clk);

nand n3(q,w1,qbar);
nand n4(qbar,w2,q);

endmodule


module SR_ff_tb;
    reg s,r,clk;
    wire q, qbar;

   SR_ff ff(q,qbar,s,r,clk);

    always #5 clk = ~clk;
    initial begin
        clk = 0;s = 0;r = 0;
        #10  s = 0; r = 1;
        #10  s = 1; r = 0;
        #10 s = 0; r = 0;
        #10 s = 0; r = 1;
        #10 s = 1; r = 1;
        #10 $stop;
        $display("Simulation finished");
        $finish;
    end
      
    // Monitor the changes
    initial begin
        $monitor("At time %t: clk=%b, S=%b, R=%b | Q=%b, Qbar=%b", $time, clk, s, r, q, qbar);
    end

endmodule
