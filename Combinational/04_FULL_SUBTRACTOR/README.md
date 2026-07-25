# 1-Bit Full Subtractor

## Description
A **Full Subtractor** is a combinational circuit that performs subtraction of three 1-bit numbers: minuend ($A$), subtrahend ($B$), and a borrow-in ($Bin$). It produces two 1-bit outputs: `Diff` (Difference) and `Bout` (Borrow out).

---

## Logic Expressions
* **Diff**: $A \oplus B \oplus Bin$
* **Bout**: $\bar{A} \cdot B + \overline{A \oplus B} \cdot Bin$

---

## Truth Table

| A | B | Bin | Diff | Bout |
|:-:|:-:|:---:|:----:|:----:|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  0   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

---

## How to Compile & Simulate

```bash
# Compile design and testbench
iverilog -o full_subtractor_tb.out full_subtractor.v full_subtractor_tb.v

# Run simulation
vvp full_subtractor_tb.out

# View waveforms
gtkwave full_subtractor.vcd