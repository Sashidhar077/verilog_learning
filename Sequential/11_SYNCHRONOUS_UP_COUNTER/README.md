# 4-bit Synchronous Up Counter

## Overview
A **Synchronous Counter** differs from an asynchronous counter because all flip-flops are triggered simultaneously by the same global clock edge. This eliminates ripple delay and makes high-speed digital designs safer and more predictable.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal (triggers all flip-flops concurrently) |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset |
| `enable` | Input | 1 bit | Count Enable (1 = count up, 0 = hold value) |
| `q` | Output | 4 bits | Parallel counter output vector |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o sync_counter_tb.out sync_counter.v sync_counter_tb.v

# Run simulation
vvp sync_counter_tb.out

# Open Waveform
gtkwave sync_counter.vcd