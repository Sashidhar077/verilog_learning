# Even Parity Generator and Checker

## Aim
Design and simulate an Even Parity Checker using Verilog HDL to detect single-bit transmission errors.

---

## Theory
Parity checking is a simple error-detection technique used in digital communication. An extra bit (parity bit) is appended to the data to make the total number of set bits (1s) either even (Even Parity) or odd (Odd Parity). 

The parity checker re-evaluates the incoming data bits and compares them against the received parity bit. An `error` output goes HIGH if a mismatch is detected, signaling a transmission error.

- **Inputs:** `data_in` (4 bits), `parity_bit_in` (1 bit)
- **Outputs:** `error` (1 bit: `1` = error detected, `0` = no error)

---

## Files
- `parity_checker.v` – RTL Design
- `parity_checker_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o parity_checker_sim parity_checker.v parity_checker_tb.v
vvp parity_checker_sim
gtkwave parity_checker.vcd