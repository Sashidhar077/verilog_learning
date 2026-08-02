# 4-bit Synchronous Down Counter

## Overview
A **Synchronous Down Counter** decreases its binary value by 1 on every active clock edge when enabled. Upon reset, it typically initializes to its maximum value (`4'b1111` or `15`) and counts down toward `0`, wrapping back around to `15` on subsequent pulses.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset (initializes output to 15) |
| `enable` | Input | 1 bit | Count Enable (1 = count down, 0 = hold value) |
| `q` | Output | 4 bits | Parallel counter output vector |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o down_counter_tb.out sync_down_counter.v sync_down_counter_tb.v

# Run simulation
vvp down_counter_tb.out

# Open Waveform
gtkwave sync_down_counter.vcd