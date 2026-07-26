# 3-to-8 Decoder

## Aim
Design and simulate a 3-to-8 Decoder with an Enable pin using Verilog HDL.

---

## Theory
A 3-to-8 decoder takes a 3-bit binary input (`A`) and activates exactly one of 8 mutually exclusive output lines (`Y[7:0]`) corresponding to the binary value of the inputs, provided the enable signal (`En`) is active high.

- **Inputs:** `A` (3 bits), `En` (1 bit)
- **Outputs:** `Y` (8 bits)

---

## Truth Table

| En | A[2] | A[1] | A[0] | Y[7:0] |
|:--:|:----:|:----:|:----:|:------:|
| 0  |  X   |  X   |  X   | 8'b00000000 |
| 1  |  0   |  0   |  0   | 8'b00000001 |
| 1  |  0   |  0   |  1   | 8'b00000010 |
| 1  |  0   |  1   |  0   | 8'b00000100 |
| 1  |  0   |  1   |  1   | 8'b00001000 |
| 1  |  1   |  0   |  0   | 8'b00010000 |
| 1  |  1   |  0   |  1   | 8'b00100000 |
| 1  |  1   |  1   |  0   | 8'b01000000 |
| 1  |  1   |  1   |  1   | 8'b10000000 |

---

## Files
- `decoder_3x8.v` – RTL Design
- `decoder_3x8_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o decoder_3x8_sim decoder_3x8.v decoder_3x8_tb.v
vvp decoder_3x8_sim
gtkwave decoder_3x8.vcd