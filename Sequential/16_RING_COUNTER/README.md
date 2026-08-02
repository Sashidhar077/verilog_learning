# 4-bit Ring Counter

## Overview
A **Ring Counter** is a shift register (usually built using D flip-flops) where the output of the final stage is fed back as the serial input to the first stage. A single `1` bit is initialized and made to "circulate" continuously around the ring on each active clock edge.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset (initializes state to `0001`) |
| `q` | Output | 4 bits | Parallel shift register output vector |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o a.out ring_counter.v ring_counter_tb.v

# Run simulation
vvp a.out

# Open Waveform
gtkwave ring_counter.vcd