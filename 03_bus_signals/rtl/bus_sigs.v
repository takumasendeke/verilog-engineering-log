//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 16 July 2026
// Making use of bus signals
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
    out_1
);

// Port defenitions (I/O declartaions)
input [3:0]in_1;
input [3:0] in_2;
input in_3;

output [3:0] out_1;

wire [3:0] in_3_bus; // used to make in_3 same bus size for bit-wise operations & and |

// Design implementation 
assign in_3_bus = {4{in_3}}; // use the replication operator for all the bits

assign out_1 = ((~in_3_bus) & in_1) | (in_3_bus & in_2);

endmodule
