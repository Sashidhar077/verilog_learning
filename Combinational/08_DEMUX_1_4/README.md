# 1-to-4 Demultiplexer (DEMUX)

## Description
A **1-to-4 Demultiplexer** is a combinational circuit that takes a single input data line (`I`) and routes it to one of four output lines (`Y[3:0]`) based on the binary combination of a 2-bit select signal (`Sel[1:0]`). The unselected output lines remain at logic `0`.

---

## Truth Table

| Sel[1:0] | I | Y[3] | Y[2] | Y[1] | Y[0] |
|:--------:|:-:|:----:|:----:|:----:|:----:|
|    00    | 1 |  0   |  0   |  0   |  1   |
|    01    | 1 |  0   |  0   |  1   |  0   |
|    10    | 1 |  0   |  1   |  0   |  0   |
|    11    | 1 |  1   |  0   |  0   |  0   |
|    XX    | 0 |  0   |  0   |  0   |  0   |

---

## How to Compile & Simulate

```bash
# Compile design and testbench
iverilog -o demux_1_4_tb.out demux_1_4.v demux_1_4_tb.v

# Run simulation
vvp demux_1_4_tb.out

# View waveforms
gtkwave demux_1_4.vcd