//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 16 July 2026
// A program that covers the use of the intermdiate wire signals 
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module intermed_wire
(
    // Inputs
    in_1,
    in_2,
    in_3,
   

    // Outputs
    out_1,
    out_2,
);

// Port defenitions (I/O declartaions)
input in_1;
input in_2;
input in_3;

output out_1;
output out_2;

wire intermdiate_sig; // intermdiate wire

// Design implementation 
assign intermdiate_sig = in_1 & in_2;

assign out_1 = in_3 & intermdiate_sig;
assign out_2 = intermdiate_sig | in_3;

endmodule
