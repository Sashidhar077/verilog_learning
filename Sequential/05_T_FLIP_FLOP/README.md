# T Flip-Flop (Toggle Flip-Flop)

## Aim
Design and simulate a Positive Edge-Triggered T Flip-Flop with an asynchronous reset using Verilog HDL.

---

## Theory
The T (Toggle) Flip-Flop is a single-input version of the JK Flip-Flop, created by connecting the J and K inputs together. 
- If `T = 0`, the flip-flop holds its previous state.
- If `T = 1`, the flip-flop toggles its state on every positive clock edge.

Because it toggles its output every clock cycle when `T = 1`, the output frequency is exactly half of the input clock frequency. This makes the T Flip-Flop the fundamental building block for frequency dividers and digital counters.

- **Inputs:** `T` (Toggle), `clk` (Clock), `rst` (Asynchronous Reset)
- **Outputs:** `Q` (Normal), `Qbar` (Inverted)

---

## Truth Table

| rst | clk | T | Q(next) | State  |
|:---:|:---:|:-:|:-------:|:-------|
|  1  |  X  | X |    0    | Reset  |
|  0  |  ↑  | 0 |    Q    | Hold   |
|  0  |  ↑  | 1 |   ~Q    | Toggle |

*(Note: '↑' indicates a rising/positive edge of the clock)*

---

## Files
- `t_flip_flop.v` – Verilog module
- `t_flip_flop_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o t_ff_sim t_flip_flop.v t_flip_flop_tb.v
vvp t_ff_sim
gtkwave t_flip_flop.vcd