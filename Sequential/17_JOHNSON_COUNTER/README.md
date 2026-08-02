# 4-bit Johnson Counter (Twisted Ring Counter)

## Overview
A **Johnson Counter** (or twisted ring counter) is a modified shift register where the inverted output of the last stage is fed back as the serial input to the first stage. For an $n$-bit counter, it generates a sequence of $2n$ states before repeating, making it useful for phase generators and timing circuits.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset (initializes state to `0000`) |
| `q` | Output | 4 bits | Parallel shift register output vector |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o a.out johnson_counter.v johnson_counter_tb.v

# Run simulation
vvp a.out

# Open Waveform
gtkwave johnson_counter.vcd