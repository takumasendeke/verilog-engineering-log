`timescale 1ns / 1ps

module tb_simple_in_n_out;
    // 1. Create fake wires to connect to your chip
    reg tb_in_1, tb_in_2, tb_in_3;  // reg = inputs we control
    wire tb_out_1, tb_out_2;        // wire = outputs we observe

    // 2. Drop your chip onto the testbench and wire it up
    simple_in_n_out uut (
        .in_1(tb_in_1), 
        .in_2(tb_in_2), 
        .in_3(tb_in_3), 
        .out_1(tb_out_1), 
        .out_2(tb_out_2)
    );

    // 3. Flip the switches!
    initial begin
        // Tell the simulator to record the electrical signals
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_simple_in_n_out);

        // Test Case A: All switches off
        tb_in_1 = 0; tb_in_2 = 0; tb_in_3 = 0; 
        #10; // Wait 10 nanoseconds

        // Test Case B: One switch on
        tb_in_1 = 1; tb_in_2 = 0; tb_in_3 = 0; 
        #10;

        // Test Case C: All switches on
        tb_in_1 = 1; tb_in_2 = 1; tb_in_3 = 1; 
        #10;

        $finish; // End the simulation
    end
endmodule