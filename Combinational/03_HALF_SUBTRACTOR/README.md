# 1-Bit Half Subtractor

## Description
A **Half Subtractor** is a combinational circuit used to perform subtraction of two single-bit binary numbers ($A - B$). It produces two 1-bit outputs: `Diff` (Difference) and `Borrow`.

---

## Logic Expressions
* **Diff**: $A \oplus B$
* **Borrow**: $\bar{A} \cdot B$

---

## Truth Table

| A | B | Diff | Borrow |
|:-:|:-:|:----:|:------:|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

---

## How to Compile & Simulate

### Prerequisites
* **Icarus Verilog (`iverilog`)**
* **GTKWave**

### Run Simulation
```bash
# Compile design and testbench
iverilog -o half_subtractor_tb.out half_subtractor.v half_subtractor_tb.v

# Run the simulation
vvp half_subtractor_tb.out

# View waveforms in GTKWave
gtkwave half_subtractor.vcd