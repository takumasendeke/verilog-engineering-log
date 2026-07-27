//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 18 July 2026
// understading use of clocks and reg to make a dflop
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module simple_dflop(
    clk, // Clock

    // Inputs
    in_1,

    // Outputs
    out_1
);

// I/O declaration
input clk;
input in_1;
output out_1;

reg out_1; // Implement as register type

// Design implementation
always @(posedge clk)
    begin
        out_1 <= in_1;
    end

endmodule
