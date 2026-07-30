# 4-bit Serial-In Parallel-Out (SIPO) Shift Register

## Overview
A **SIPO (Serial-In Parallel-Out) Shift Register** accepts data serially (one bit at a time per clock cycle) and makes all the stored bits available simultaneously via parallel outputs once the shift sequence completes.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset |
| `d_in` | Input | 1 bit | Serial input data stream |
| `d_out` | Output | 4 bits | Parallel output data vector |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o a.out sipo_shift_register.v sipo_shift_register_tb.v

# Run simulation
vvp a.out

# Open Waveform
gtkwave sipo_shift_register.vcd