//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 18 July 2026
// Implementing a reset to a DFlop
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module moduleName (
    input wire clk,
    input wire reset,

    // Inputs
    input wire in_1,

    // Outputs
    output reg out_1
);

// Design implementation
always @(posedge clk or posedge reset)
begin
    if (reset)
        out_1 <= 1'b0;
    else
        out_1 <= in_1;
end
    
endmodule
