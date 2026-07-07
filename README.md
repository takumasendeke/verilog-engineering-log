# verilog-engineering-log

A daily log of digital design, simulation, and synthesis. The goal of this repo is to track my progress in hardware description languages (Verilog/SystemVerilog) and understanding the backend RTL-to-GDSII flow from first principles.

## Toolchain & Environment
I'm using a lightweight command-line toolchain to see exactly how code maps to hardware primitives (it's free and I'm broke):
* **Simulation:** Icarus Verilog (`iverilog`) + `vvp` runtime
* **Waveforms:** GTKWave
* **Synthesis & Netlists:** Yosys Open SYnthesis Suite (Aren't the prettiest but they get the job done)

## Workspace Structure
Files are strictly isolated by their function to mimic a professional ASIC workspace:
* `rtl/` - Synthesizable hardware description logic.
* `tb/` - Non-synthesizable testbenches and simulation stimulus.
* `docs/` - Synthesized netlists, schematics, and design notes.

## Log

### 01_simple_input_and_output
* **Focus:** Structural module declaration and assignment
* **Synthesis:** Ran the module through Yosys to verify optimization passes. Abstract RTL successfully optimized and mapped to internal gate primitives (`$_AND_`, `$_OR_`). Netlist generated as SVG.

## Automation Shortcuts

### Compile and Simulate
```bash
iverilog -o sim.vvp simple_input_and_output/rtl/simple_in_n_out.v simple_input_and_output/tb/tb_simple_in_n_out.v
vvp sim.vvp
gtkwave waveform.vcd
