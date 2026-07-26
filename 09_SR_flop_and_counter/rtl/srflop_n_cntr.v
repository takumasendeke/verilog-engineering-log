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
        else if (stop)
            cnt_en <= 1'b0;
    end

// Counter 
always @ (posedge clk or posedge reset)
    begin
        if (reset)
            count <= 4'h0;
        else if (cnt_en && count == 4'd13)
            count <= 4'h0;
        else if (cnt_en)
            count <= count + 1; 
    end

// Delay
always @ (posedge clk or posedge reset) 
    begin
        if (reset)
            begin 
                stop_d1 <= 1'b0;
                stop_d2 <= 1'b0;
            end
        else 
            begin
                stop_d1 <= stop;
                stop_d2 <= stop_d1;
            end
    end

endmodule
