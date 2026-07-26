//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 19 July 2026
// Implementing an SR flip flop 
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module srflop_n_counter(
    clk,
    reset,

    start,
    stop,

    count
);

input wire clk;
input wire reset;

input wire start;
input wire stop;

output [3:0] count;
reg cnt_en;
reg [3:0] count;
reg stop_d1;
reg stop_d2;

// Design implementation
// SR flop
always @ (posedge clk or posedge reset)
    begin
        if (reset)
            cnt_en <= 1'b0;
        else if (start)
            cnt_en <= 1'b1;
        else if 
            cnt_en <= 1'b0;
    end

endmodule
