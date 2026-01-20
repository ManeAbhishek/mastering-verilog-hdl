//Create JK Flip flop 
//Gate Lev modelling

/*module JK_ff(q,qbar,j,k,clk,clr);

input j,k,clk,clr;
output  q,qbar;


wire nand1_out; // output from nand1
wire nand2_out; // output from nand2

nand(nand1_out, j,clk,qbar);
nand(nand2_out, k,clk,q);
nand(q,qbar,nand1_out);
nand(qbar,q,nand2_out,clr);


endmodule 

module jk_gate_level (
    output q,
    output q_bar,
    input j,
    input k,
    input clk,
    input clr // Active-low Clear to initialize the state
);
    wire nand_j_out, nand_k_out;

    // Input Stage: 3-input NAND gates
    // j, clk, and q_bar feedback
    nand g1 (nand_j_out, j, clk, q_bar);
    
    // k, clk, and q feedback
    nand g2 (nand_k_out, k, clk, q);

    // Output Latch Stage: 3-input NAND gates to accommodate Clear
    // We use clr to force q to 0 and q_bar to 1 initially
    nand g3 (q, nand_j_out, q_bar);
    nand g4 (q_bar, nand_k_out, q, clr);
endmodule */

// Race around condition issue solved using Master Slave Flip Flop
module jk_master_slave(q, qbar, j, k, clk, clr);
    output q, qbar;
    input j, k, clk, clr;
    
    wire mq, mqbar;   // Master latch outputs
    wire clk_inv;
    wire m_nand1, m_nand2, s_nand1, s_nand2;

    not (clk_inv, clk);

    // --- Master Latch Section ---
    nand (m_nand1, j, clk, qbar);
    nand (m_nand2, k, clk, q);
    nand (mq, m_nand1, mqbar);
    nand (mqbar, m_nand2, mq, clr); // clr initializes the loop

    // --- Slave Latch Section ---
    nand (s_nand1, mq, clk_inv);
    nand (s_nand2, mqbar, clk_inv);
    nand (q, s_nand1, qbar);
    nand (qbar, s_nand2, q, clr);

endmodule

module jk_tb;
    reg j, k, clk, clr;
    wire q, q_bar;

    // Instantiate the Unit Under Test (UUT)
    jk_master_slave uut (
        .q(q), 
        .qbar(q_bar), 
        .j(j), 
        .k(k), 
        .clk(clk), 
        .clr(clr)
    );

    // Generate Clock: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0; j = 0; k = 0;
        
        // --- IMPORTANT: Clear the flip-flop to start at Q=0 ---
        clr = 0; #10; // Apply active-low clear
        clr = 1; #10; // Release clear

        // Test Cases
        #10 j = 1; k = 0; // SET: Q should become 1
        #10 j = 0; k = 0; // HOLD: Q should stay 1
        #10 j = 0; k = 1; // RESET: Q should become 0
        #10 j = 1; k = 1; // TOGGLE: Q should become 1
        #10 j = 1; k = 1; // TOGGLE: Q should become 0
        
        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | J=%b K=%b | Q=%b Q_bar=%b", $time, j, k, q, q_bar);
    end
endmodule
