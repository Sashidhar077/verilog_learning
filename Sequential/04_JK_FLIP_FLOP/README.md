# JK Flip-Flop

## Aim
Design and simulate a Positive Edge-Triggered JK Flip-Flop with an asynchronous reset using Verilog HDL.

---

## Theory
The JK Flip-Flop resolves the "invalid state" problem of the SR Flip-Flop. When both inputs are HIGH (`J=1, K=1`), it **toggles** its previous output state.

---

## Truth Table

| rst | clk | J | K | Q(next) | State  |
|:---:|:---:|:-:|:-:|:-------:|:-------|
|  1  |  X  | X | X |    0    | Reset  |
|  0  |  ↑  | 0 | 0 |    Q    | Hold   |
|  0  |  ↑  | 0 | 1 |    0    | Reset  |
|  0  |  ↑  | 1 | 0 |    1    | Set    |
|  0  |  ↑  | 1 | 1 |   ~Q    | Toggle |

---

## Files
- `jk_flip_flop.v` – Verilog module
- `jk_flip_flop_tb.v` – Testbench
- `README.md` – Documentation

---

## Learning Outcome
- Implemented sequential logic using a `case` statement.
- Understood the toggling behavior (`~Q`) to prevent invalid states.
- Verified continuous toggling across multiple clock cycles.