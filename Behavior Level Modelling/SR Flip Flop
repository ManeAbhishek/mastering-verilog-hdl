//Create SR Flip flop 
//behavior Level

module srff_behave(s, r, clk, q, qbar);

input clk, s, r;
output reg q, qbar;

always@(posedge clk)
begin

if(s == 1)
begin
q <= 1;
qbar <= 0;
end

else if(r == 1)
begin
q <= 0;
qbar <= 1;
end

else if(s == 0 & r == 0)
begin
q <= q;
qbar = qbar;
end

end

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
