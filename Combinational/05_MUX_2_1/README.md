# 2-to-1 Multiplexer (MUX)

## Description
A **2-to-1 Multiplexer** is a combinational logic circuit that selects one of two input data lines (`I0`, `I1`) and forwards the routed value to a single output line (`Y`) based on the value of a select line (`Sel`).

---

## Logic Expression
* **Y**: $\bar{Sel} \cdot I0 + Sel \cdot I1$

---

## Truth Table

| Sel | I1 | I0 | Y (Output) |
|:---:|:--:|:--:|:----------:|
|  0  | X  | 0  |     0      |
|  0  | X  | 1  |     1      |
|  1  | 0  | X  |     0      |
|  1  | 1  | X  |     1      |

---

## How to Compile & Simulate

```bash
# Compile design and testbench
iverilog -o mux_2_1_tb.out mux_2_1.v mux_2_1_tb.v

# Run simulation
vvp mux_2_1_tb.out

# View waveforms
gtkwave mux_2_1.vcd