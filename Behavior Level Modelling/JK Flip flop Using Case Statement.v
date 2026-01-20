///Create JK Flip flop 
//Behavior Lev modelling Using Case Statement

module jk_ff(q,qbar,j,k,clk);
input j,k,clk;
output reg q,qbar;

always @(posedge clk) begin // Triggered on the positive edge of the clock
    case ({j, k}) // Concatenate j and k to form a 2-bit input
        2'b00: begin // j=0,k=0 (Hold State)
            q <= q;      // Q holds its previous value
            qbar <= qbar;
        end
        2'b01: begin // j=0,k=1 (Reset State)
            q <= 1'b0;   // Q becomes 0
            qbar <= 1'b1;
        end
        2'b10: begin // j=1,k=0 (Set State)
            q <= 1'b1;   // Q becomes 1
            qbar <= 1'b0;
        end
        2'b11: begin // j=1,k=1 (Invalid/Forbidden State)
            q <= qbar;   // Q becomes 'X' (unknown)
            qbar <= q;
        end
        default: begin // For any other unexpected input (good practice)
            q <= q;
            qbar <= qbar;
        end
    endcase
end
endmodule

module JK_ff_tb;
    reg s,r,clk;
    wire q, qbar;

   jk_ff ff(q,qbar,s,r,clk);

    always #5 clk = ~clk;
    initial begin
        clk = 0;s = 1;r = 0;
        #10  s = 0; r = 0;
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
