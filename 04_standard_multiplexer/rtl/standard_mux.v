//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 17 July 2026
// Understanding the multiplexer
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module standard_mux // module/file name
(
    // Inputs
    in_1,
    in_2,
    in_3,

    // Outputs
    out_1;

);

// Port defenitions (I/O declartaions)
input [3:0] in_1;
input [3:0] in_2;

input in_3;

output [3:0] out_1;

// Design implementation
assign out_1 = in_3 ? in_2: // standard mux in verilog (similar to switch/if statements in other languages)
                      in_1; // defualt case 

endmodule
