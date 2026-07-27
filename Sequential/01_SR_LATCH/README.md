# SR Latch

## Aim
Design and simulate a basic SR (Set-Reset) Latch using Verilog HDL.

---

## Theory
An SR Latch is a fundamental asynchronous sequential circuit that can store 1 bit of information. It introduces the concept of "memory" to digital design, where the output depends not just on the current inputs, but also on the previous state.

- **Set (S):** When `S = 1` and `R = 0`, the output `Q` becomes `1`.
- **Reset (R):** When `S = 0` and `R = 1`, the output `Q` becomes `0`.
- **Hold:** When both `S` and `R` are `0`, the latch maintains its previous state.
- **Invalid:** When both `S` and `R` are `1`, it creates a race condition in physical gates, making the outputs unpredictable (represented as `x`).

- **Inputs:** `S` (1 bit), `R` (1 bit)
- **Outputs:** `Q` (1 bit), `Qbar` (1 bit)

---

## Truth Table

| S | R | Q(next) | Qbar(next) | State       |
|:-:|:-:|:-------:|:----------:|:------------|
| 0 | 0 |    Q    |    Qbar    | Hold/Memory |
| 0 | 1 |    0    |      1     | Reset       |
| 1 | 0 |    1    |      0     | Set         |
| 1 | 1 |    x    |      x     | Invalid     |

---

## Files
- `sr_latch.v` – RTL Design
- `sr_latch_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o sr_latch_sim sr_latch.v sr_latch_tb.v
vvp sr_latch_sim
gtkwave sr_latch.vcd