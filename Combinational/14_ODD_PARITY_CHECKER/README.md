# Odd Parity Generator and Checker

## Aim
Design and simulate an Odd Parity Checker using Verilog HDL to detect single-bit transmission errors.

---

## Theory
In odd parity checking, the total number of set bits (1s) across the data and the appended parity bit must always be an **odd** number. 

The checker re-evaluates the incoming data bits and compares them against the received parity bit. An `error` output goes HIGH if a mismatch is detected.

- **Inputs:** `data_in` (4 bits), `parity_bit_in` (1 bit)
- **Outputs:** `error` (1 bit: `1` = error detected, `0` = no error)

---

## Files
- `odd_parity_checker.v` – RTL Design
- `odd_parity_checker_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o odd_parity_checker_sim odd_parity_checker.v odd_parity_checker_tb.v
vvp odd_parity_checker_sim
gtkwave odd_parity_checker.vcd