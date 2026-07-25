# 4-to-1 Multiplexer (MUX)

## Description
A **4-to-1 Multiplexer** is a combinational circuit that selects one of four input data lines (`I[3:0]`) and routes it to a single output line (`Y`) based on the binary combination of a 2-bit select signal (`Sel[1:0]`).

---

## Truth Table

| Sel[1:0] | Selected Output (Y) |
|:--------:|:-------------------:|
|    00    |        I[0]         |
|    01    |        I[1]         |
|    10    |        I[2]         |
|    11    |        I[3]         |

---

## How to Compile & Simulate

```bash
# Compile design and testbench
iverilog -o mux_4_1_tb.out mux_4_1.v mux_4_1_tb.v

# Run simulation
vvp mux_4_1_tb.out

# View waveforms
gtkwave mux_4_1.vcd