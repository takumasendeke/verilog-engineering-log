//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 17 July 2026
// Making use of concatination for a bus breakout
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module bus_breakout 
(
    // Input 
    in_1,
    in_2,

    // Outputs
    out_1
);

// Port definitons
input [3:0] in_1;
input [3:0] in_2;

output [5:0] out_1;

assign out_1 = {in_2[3:2],
                (in_1[3] & in_2[1]),
                (in_1[2] & in_2[0]),
                in_1[1:0]};

endmodule
