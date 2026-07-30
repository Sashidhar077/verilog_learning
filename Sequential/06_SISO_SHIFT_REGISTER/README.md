# 4-bit Serial-In Serial-Out (SISO) Shift Register

## Overview
A **SISO (Serial-In Serial-Out) Shift Register** is a sequential circuit that accepts data serially (one bit per clock cycle) and outputs data serially. A 4-bit SISO register requires 4 clock cycles to store 4 bits, and after 4 clock cycles, the first bit appears at the output.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset |
| `d_in` | Input | 1 bit | Serial input data stream |
| `d_out` | Input/Output | 1 bit | Serial output data stream |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o siso_tb siso_shift_register.v siso_shift_register_tb.v

# Run simulation
vvp siso_tb

# Open Waveform
gtkwave siso_shift_register.vcd