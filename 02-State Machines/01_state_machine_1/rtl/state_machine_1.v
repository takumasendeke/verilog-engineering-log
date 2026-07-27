//////////////////////////////////////////////////////////////////////
// Takudzwa Antony Masendeke 
// 27 July 2026
// Implementing my very first state machine in verilog
// 
// From: Verilog by Example: A Concise Introduction for FPGA Design
// By: Blaine C. Readler
/////////////////////////////////////////////////////////////////////

module state_machine_1(
    clk,
    reset, // Always remember reset
    go,
    kill,
    done,
);

// Port Definitions 
input wire clk;
input wire reset;
input wire go;
input wire kill;
output done;

reg [6:0] count;
reg done;
reg [1:0] state_reg;

// State machiene parameters
parameter idle = 2'b00;
parameter active = 2'b01;
parameter finish = 2'b10;
parameter abort = 2'b11;

// Design implementation

// State machine 
always @ (posedge clk or posedge reset)
    begin
        if (reset)
            state_reg <= idle;
        else
            case (state_reg)
                idle:
                    if (go) 
                        state_reg <= active;

                active: 
                    if (kill)
                        state_reg <= abort;
                    else if (count == 7'd100)
                        state_reg <= finish;
                
                finish: 
                    state_reg <= idle;
                
                abort:
                    if (!kill)
                        state_reg <= idle;
                
                default: 
                    state_reg <= idle;
            endcase
    end

    // Counter 
    always @ (posedge clk or posedge reset)
        begin
            if (reset || kill)
                count <= 7'd0;
            else if (state_reg == finish || state_reg == abort)
                count <= 7'd0;
            else if (state_reg == active)
                count <= count + 1;
        end

endmodule
