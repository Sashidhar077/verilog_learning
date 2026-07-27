# 4-to-2 Priority Encoder

## Aim
Design and simulate a 4-to-2 Priority Encoder with a valid signal using Verilog HDL.

---

## Theory
A priority encoder resolves the limitation of a standard encoder by handling cases where multiple inputs are HIGH simultaneously. The input with the highest index (e.g., `D[3]` over `D[2]`, `D[1]`, `D[0]`) takes precedence and is encoded into the output. A `valid` signal indicates whether any active input is present.

- **Inputs:** `D` (4 bits)
- **Outputs:** `Y` (2 bits), `valid` (1 bit)

---

## Truth Table

| D[3] | D[2] | D[1] | D[0] | Y[1] | Y[0] | Valid |
|:----:|:----:|:----:|:----:|:----:|:----:|:-----:|
|  0   |  0   |  0   |  0   |  0   |  0   |   0   |
|  0   |  0   |  0   |  1   |  0   |  0   |   1   |
|  0   |  0   |  1   |  X   |  0   |  1   |   1   |
|  0   |  1   |  X   |  X   |  1   |  0   |   1   |
|  1   |  X   |  X   |  X   |  1   |  1   |   1   |

---

## Files
- `priority_encoder_4x2.v` – RTL Design
- `priority_encoder_4x2_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o priority_encoder_4x2_sim priority_encoder_4x2.v priority_encoder_4x2_tb.v
vvp priority_encoder_4x2_sim
gtkwave priority_encoder_4x2.vcd