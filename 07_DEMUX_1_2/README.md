# 1-to-2 Demultiplexer (DEMUX)

## Description
A **1-to-2 Demultiplexer** is a combinational logic circuit that takes a single input data line (`I`) and routes it to one of two output lines (`Y0`, `Y1`) based on the value of a select line (`Sel`).

---

## Logic Expressions
* **Y0**: $I \cdot \overline{Sel}$
* **Y1**: $I \cdot Sel$

---

## Truth Table

| Sel | I | Y1 | Y0 |
|:---:|:-:|:--:|:--:|
|  0  | 0 |  0 |  0 |
|  0  | 1 |  0 |  1 |
|  1  | 0 |  0 |  0 |
|  1  | 1 |  1 |  0 |

---

## How to Compile & Simulate

```bash
# Compile design and testbench
iverilog -o demux_1_2_tb.out demux_1_2.v demux_1_2_tb.v

# Run simulation
vvp demux_1_2_tb.out

# View waveforms
gtkwave demux_1_2.vcd