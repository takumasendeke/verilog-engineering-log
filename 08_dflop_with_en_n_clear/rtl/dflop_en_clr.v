//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 19 July 2026
// Implementing an enable and clear to a DFlop
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module dflop_en_clr(
    input wire enable,
    input wire clear,
    input wire clk,
    input wire reset,

    // Inputs 
    input wire in_1,

    // Outputs
    output reg out_1
);

// Design implementation
always @(posedge clk or posedge reset )
    begin
        if (reset)
            out_1 <= 1'b0;
        else if (clear == 1'b0)
            out_1 <= 1'b0;
        else if (enable)
            out_1 <= in_1;
    end

endmodule
