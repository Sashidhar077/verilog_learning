# D Flip-Flop (Positive Edge-Triggered)

## Aim
Design and simulate a Positive Edge-Triggered D Flip-Flop with an asynchronous reset using Verilog HDL.

---

## Theory
The D Flip-Flop is the fundamental building block of most modern synchronous digital systems (like shift registers and counters). 

Unlike a latch, which is transparent while the enable is HIGH, a flip-flop only samples the `D` input at the exact moment the clock (`clk`) transitions from 0 to 1 (**Positive Edge**). At all other times, the output `Q` is held steady, regardless of how `D` changes.

- **Non-blocking Assignments (`<=`):** In clocked sequential logic, it is highly recommended to use `<=` instead of `=`. This ensures that all flip-flops in a system update their outputs simultaneously, preventing race conditions.
- **Asynchronous Reset (`rst`):** If `rst` goes HIGH, the flip-flop resets immediately, without waiting for the next clock edge.

- **Inputs:** `D` (Data), `clk` (Clock), `rst` (Reset)
- **Outputs:** `Q` (Normal output), `Qbar` (Inverted output)

---

## Truth Table

| rst | clk | D | Q(next) | State |
|:---:|:---:|:-:|:-------:|:------|
|  1  |  X  | X |    0    | Reset |
|  0  |  ↑  | 0 |    0    | Store 0 |
|  0  |  ↑  | 1 |    1    | Store 1 |
|  0  | 0/1 | X |    Q    | Hold |

*(Note: '↑' indicates a rising/positive edge of the clock)*

---

## Files
- `d_flip_flop.v` – RTL Design
- `d_flip_flop_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o d_ff_sim d_flip_flop.v d_flip_flop_tb.v
vvp d_ff_sim
gtkwave d_flip_flop.vcd