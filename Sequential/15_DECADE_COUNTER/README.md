# Mod-10 Decade Counter

## Overview
A **Decade Counter (Mod-10 Counter)** is a sequential circuit that counts from `0` to `9` (`0000` to `1001` in binary) and then automatically resets back to `0` on the next clock pulse. Because it has 10 distinct output states, it is widely used in frequency division and decimal display applications.

---

## Ports Information

| Port Name | Direction | Width | Description |
|-----------|-----------|-------|-------------|
| `clk` | Input | 1 bit | System Clock signal |
| `rst_n` | Input | 1 bit | Active-low Asynchronous Reset |
| `enable` | Input | 1 bit | Count Enable (1 = count, 0 = hold value) |
| `q` | Output | 4 bits | Parallel counter output vector (`0` to `9`) |

---

## Simulation & Run Commands

Using **Icarus Verilog (`iverilog`)** and **GTKWave**:

```bash
# Compile design and testbench
iverilog -o a.out decade_counter.v decade_counter_tb.v

# Run simulation
vvp a.out

# Open Waveform
gtkwave decade_counter.vcd