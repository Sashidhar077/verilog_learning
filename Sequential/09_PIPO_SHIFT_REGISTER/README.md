# 4-bit Parallel-In Parallel-Out (PIPO) Register

## Overview
A **PIPO (Parallel-In Parallel-Out) Register** loads all input bits simultaneously in parallel on the clock edge (controlled by a load enable signal) and outputs them all simultaneously in parallel. It is essentially a multi-bit register used for temporary data storage.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset |
| `load` | Input | 1 bit | Load Enable (1 = load input, 0 = hold data) |
| `d_in` | Input | 4 bits | Parallel input data vector |
| `d_out` | Output | 4 bits | Parallel output data vector |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o pipo.out pipo_shift_register.v pipo_shift_register_tb.v

# Run simulation
vvp pipo.out

# Open Waveform
gtkwave pipo_shift_register.vcd