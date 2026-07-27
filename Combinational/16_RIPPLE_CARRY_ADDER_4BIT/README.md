# 4-bit Ripple Carry Adder

## Aim
Design and simulate a 4-bit Ripple Carry Adder using structural modeling in Verilog HDL.

---

## Theory
A Ripple Carry Adder (RCA) is a digital circuit that produces the arithmetic sum of two binary numbers. It is constructed by cascading multiple 1-bit Full Adders. 

The name "ripple" comes from how the carry bit "ripples" from the least significant bit (LSB) to the most significant bit (MSB). The second full adder cannot complete its operation until it receives the carry-out from the first full adder, creating a propagation delay.

- **Inputs:** `A` (4 bits), `B` (4 bits), `Cin` (1 bit)
- **Outputs:** `Sum` (4 bits), `Cout` (1 bit)

---

## Files
- `ripple_carry_adder_4bit.v` – RTL Design (Contains both Full Adder and Top-Level RCA)
- `ripple_carry_adder_4bit_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o rca_4bit_sim ripple_carry_adder_4bit.v ripple_carry_adder_4bit_tb.v
vvp rca_4bit_sim
gtkwave ripple_carry_adder_4bit.vcd