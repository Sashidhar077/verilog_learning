# 4-bit Binary Adder

## Aim
Design and simulate a 4-bit Binary Adder using dataflow modeling in Verilog HDL.

---

## Theory
A 4-bit binary adder is a combinational arithmetic circuit that adds two 4-bit numbers (`A` and `B`) along with an initial carry-in (`Cin`). It produces a 4-bit `Sum` and a 1-bit carry-out (`Cout`). In this implementation, behavioral dataflow logic (`+` operator) is used, letting the synthesis tool determine the underlying gate-level architecture.

- **Inputs:** `A` (4 bits), `B` (4 bits), `Cin` (1 bit)
- **Outputs:** `Sum` (4 bits), `Cout` (1 bit)

---

## Test Cases Evaluated

| A (Dec) | B (Dec) | Cin | Sum (Dec) | Cout | Result (Binary: Cout Sum) |
|:-------:|:-------:|:---:|:---------:|:----:|:-------------------------:|
|    0    |    0    |  0  |     0     |  0   |          0 0000           |
|    5    |    3    |  0  |     8     |  0   |          0 1000           |
|   15    |    1    |  0  |     0     |  1   |          1 0000           |
|   15    |   15    |  1  |    15     |  1   |          1 1111           |
|   10    |    5    |  0  |    15     |  0   |          0 1111           |

---

## Files
- `binary_adder_4bit.v` – RTL Design
- `binary_adder_4bit_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o binary_adder_4bit_sim binary_adder_4bit.v binary_adder_4bit_tb.v
vvp binary_adder_4bit_sim
gtkwave binary_adder_4bit.vcd
