//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 6 July 2026
// First Verilog program a simple in and out system 
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module simple_in_n_out // module/file name
(
    // Inputs
    in_1,
    in_2,
    in_3,

    // Outputs
    out_1,
    out_2
);

// Port defenitions (I/O declartaions)
input in_1;
input in_2;
input in_3;

output out_1;
output out_2;

// Design implementation 

assign out_1 = in_1 & in_2 & in_3;
assign out_2 = in_1 | in_2 | in_3;

endmodule
