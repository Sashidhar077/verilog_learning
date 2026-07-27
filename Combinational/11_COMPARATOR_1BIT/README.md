# 1-bit Digital Comparator

## Aim
Design and simulate a 1-bit Digital Comparator using Verilog HDL.

---

## Theory
A digital comparator is a combinational circuit that compares two binary numbers (`A` and `B`) to determine their relative magnitude. A 1-bit comparator provides three outputs indicating whether $A > B$, $A = B$, or $A < B$.

- **Inputs:** `A` (1 bit), `B` (1 bit)
- **Outputs:** `greater` ($A > B$), `equal` ($A = B$), `lesser` ($A < B$)

---

## Truth Table

| A | B | Greater ($A > B$) | Equal ($A = B$) | Lesser ($A < B$) |
|:-:|:-:|:-----------------:|:---------------:|:----------------:|
| 0 | 0 |         0         |        1        |        0         |
| 0 | 1 |         0         |        0        |        1         |
| 1 | 0 |         1         |        0        |        0         |
| 1 | 1 |         0         |        1        |        0         |

---

## Files
- `comparator_1bit.v` – RTL Design
- `comparator_1bit_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o comparator_1bit_sim comparator_1bit.v comparator_1bit_tb.v
vvp comparator_1bit_sim
gtkwave comparator_1bit.vcd