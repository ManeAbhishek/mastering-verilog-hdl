//Create SR Flip flop 
//Behavior Lev modelling Using Case Statement

module sr_ff(q,qbar,s,r,clk);
input s,r,clk;
output reg q,qbar;

always @(posedge clk) begin // Triggered on the positive edge of the clock
    case ({s, r}) // Concatenate S and R to form a 2-bit input
        2'b00: begin // S=0, R=0 (Hold State)
            q <= q;      // Q holds its previous value
            qbar <= qbar;
        end
        2'b01: begin // S=0, R=1 (Reset State)
            q <= 1'b0;   // Q becomes 0
            qbar <= 1'b1;
        end
        2'b10: begin // S=1, R=0 (Set State)
            q <= 1'b1;   // Q becomes 1
            qbar <= 1'b0;
        end
        2'b11: begin // S=1, R=1 (Invalid/Forbidden State)
            q <= 1'bx;   // Q becomes 'X' (unknown)
            qbar <= 1'bx;
        end
        default: begin // For any other unexpected input (good practice)
            q <= q;
            qbar <= qbar;
        end
    endcase
end
endmodule

module SR_ff_tb;
    reg s,r,clk;
    wire q, qbar;

   sr_ff ff(q,qbar,s,r,clk);

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
