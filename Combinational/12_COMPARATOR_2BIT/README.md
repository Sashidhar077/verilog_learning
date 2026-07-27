# 2-bit Magnitude Comparator

## Aim
Design and simulate a 2-bit Digital Magnitude Comparator using Verilog HDL.

---

## Theory
A 2-bit digital comparator compares two 2-bit binary inputs (`A` and `B`) to determine their relative magnitude. It yields three outputs indicating whether $A > B$, $A = B$, or $A < B$.

- **Inputs:** `A` (2 bits), `B` (2 bits)
- **Outputs:** `greater` ($A > B$), `equal` ($A = B$), `lesser` ($A < B$)

---

## Files
- `comparator_2bit.v` – RTL Design
- `comparator_2bit_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o comparator_2bit_sim comparator_2bit.v comparator_2bit_tb.v
vvp comparator_2bit_sim
gtkwave comparator_2bit.vcd