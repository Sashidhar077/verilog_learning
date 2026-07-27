# D Latch (Gated D Latch)

## Aim
Design and simulate a Gated D (Data) Latch using Verilog HDL.

---

## Theory
A D Latch has two inputs: Data (`D`) and Enable (`En`). It removes the "invalid" condition found in the basic SR latch by tying the Set and Reset inputs together via an inverter (internally).

- **Transparent Mode (`En = 1`):** The output `Q` perfectly tracks the input `D`. If `D` changes, `Q` changes immediately.
- **Memory/Latch Mode (`En = 0`):** The latch ignores the `D` input. The output `Q` "latches" and holds whatever value it had at the exact moment `En` went LOW.

Note :
The Rule of reg in an always Block
When you declare a variable as a reg (like output reg Q) and assign it inside an always block, Verilog follows a strict rule: A reg will hold its current value indefinitely until a line of code explicitly tells it to change.Here latch gets inferred as there is no else block,like what to do when if block is false,
When En = 1: The if condition is true. The simulator executes Q = D;. The value updates.

When En = 0: The if condition is false. The simulator skips the if block.

The Result: Because the simulator skipped the block, it never executed a new assignment for Q. Since Q is a reg, it simply does nothing and remembers whatever value it had the last time En was 1.


- **Inputs:** `D` (1 bit), `En` (1 bit)
- **Outputs:** `Q` (1 bit), `Qbar` (1 bit)

---

## Truth Table

| En | D | Q(next) | State       |
|:--:|:-:|:-------:|:------------|
| 0  | X |    Q    | Hold/Memory |
| 1  | 0 |    0    | Reset       |
| 1  | 1 |    1    | Set         |

---

## Files
- `d_latch.v` – RTL Design
- `d_latch_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o d_latch_sim d_latch.v d_latch_tb.v
vvp d_latch_sim
gtkwave d_latch.vcd