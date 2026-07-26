# 2-to-4 Decoder

## Aim
Design and simulate a 2-to-4 Decoder with an Enable pin using Verilog HDL.

---

## Theory
A decoder is a combinational logic circuit that converts binary information from $n$ input lines to a maximum of $2^n$ unique output lines. A 2-to-4 decoder takes 2 select/input lines and activates one of 4 outputs based on the input combination, provided the enable signal (`En`) is high.

- **Inputs:** `A` (2 bits), `En` (1 bit)
- **Outputs:** `Y` (4 bits)

---

## Truth Table

| En | A[1] | A[0] | Y[3] | Y[2] | Y[1] | Y[0] |
|:--:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0  |  X   |  X   |  0   |  0   |  0   |  0   |
| 1  |  0   |  0   |  0   |  0   |  0   |  1   |
| 1  |  0   |  1   |  0   |  0   |  1   |  0   |
| 1  |  1   |  0   |  0   |  1   |  0   |  0   |
| 1  |  1   |  1   |  1   |  0   |  0   |  0   |

---

## Files
- `decoder_2x4.v` – RTL Design
- `decoder_2x4_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o decoder_2x4_sim decoder_2x4.v decoder_2x4_tb.v
vvp decoder_2x4_sim
gtkwave decoder_2x4.vcd