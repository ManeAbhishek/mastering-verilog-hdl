/// Create T Flip flop 
// Behavior Modelling
// if else Statement

module T_ff(q,qbar,t,rst,clk);
input t,rst,clk;
output reg q,qbar;

always@(posedge clk)
begin
if(!rst)begin
q<=0;
qbar<=1;
end
else if(t)
begin
q<=~q;
qbar<=q;
end
else begin
q<=q;
qbar<=qbar;
end
end
endmodule

module tff_test;
reg t,clk,rst;
wire q,qbar;

T_ff tf(q,qbar,t,rst,clk);

always #5 clk=~clk;
initial begin
        // Initialize Inputs
        clk = 0;
        t = 0;
        rst = 0; // Start in Reset

        // Release Reset after 15ns
        #15 rst = 1; 
        
        // Case 1: T=0 (Hold state)
        #10 t = 0; 
        
        // Case 2: T=1 (Toggle state)
        // Q should flip on every positive edge of the clock
        #10 t = 1; 
        
        // Stay in Toggle for 3 clock cycles
        #30;

        // Case 3: T=0 (Stop toggling, hold current state)
        #10 t = 0;

        // Case 4: Test Reset during operation
        #10 rst = 0;
        #10 rst = 1;

        #20 $finish;
    end

    // 5. Monitor results
    initial begin
        $monitor("Time=%0t | rst=%b | t=%b | q=%b | qbar=%b", 
                 $time, rst, t, q, qbar);
    end
endmodule
