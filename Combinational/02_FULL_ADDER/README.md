# 1-Bit Full Adder

## Description
A **Full Adder** is a digital combinational logic circuit that performs binary addition on three 1-bit inputs: `A`, `B`, and an incoming carry `Cin`. It produces two 1-bit outputs: `Sum` and `Cout`.

It serves as the fundamental building block for multi-bit adders such as **Ripple Carry Adders (RCA)** and **Carry Lookahead Adders (CLA)**.

---

## Logic Expressions
* **Sum**: $A \oplus B \oplus C_{in}$
* **Cout**: $(A \cdot B) + (B \cdot C_{in}) + (A \cdot C_{in})$

---

## Truth Table

| A | B | Cin | Sum | Cout |
|:-:|:-:|:---:|:---:|:----:|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

---

## How to Compile & Simulate

### Prerequisites
* **Icarus Verilog (`iverilog`)**
* **GTKWave**

### Run Simulation
```bash
# Compile design and testbench
iverilog -o full_adder_tb.out full_adder.v full_adder_tb.v

# Run the simulation
vvp full_adder_tb.out

# View waveforms in GTKWave
gtkwave full_adder.vcd