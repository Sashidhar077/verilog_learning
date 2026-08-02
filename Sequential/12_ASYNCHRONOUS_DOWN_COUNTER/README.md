# Asynchronous Down Counter

## Aim

Design and simulate a 4-bit Asynchronous Down Counter using Verilog HDL.

---

## Theory

An Asynchronous Down Counter is a ripple counter that counts in descending order.

Unlike an up counter, each flip-flop is triggered by the **falling edge** of the previous stage.

---

## Features

- 4-bit Counter
- Active-Low Reset
- Counts from 15 down to 0
- Automatically wraps back to 15

---

## Count Sequence

| Decimal | Binary |
|---------:|:------:|
| 15 | 1111 |
| 14 | 1110 |
| 13 | 1101 |
| 12 | 1100 |
| 11 | 1011 |
| 10 | 1010 |
| 9 | 1001 |
| 8 | 1000 |
| 7 | 0111 |
| 6 | 0110 |
| 5 | 0101 |
| 4 | 0100 |
| 3 | 0011 |
| 2 | 0010 |
| 1 | 0001 |
| 0 | 0000 |

---

## Files

- `asynchronous_down_counter.v`
- `asynchronous_down_counter_tb.v`
- `README.md`

---

## Simulation Commands

```bash
iverilog -o asynchronous_down_counter_sim asynchronous_down_counter.v asynchronous_down_counter_tb.v
vvp asynchronous_down_counter_sim
gtkwave asynchronous_down_counter.vcd


## Expected Output

```
1111
1110
1101
1100
1011
1010
1001
1000
0111
0110
0101
0100
0011
0010
0001
0000
1111
```

---

## Learning Outcome

- Learned the working principle of an asynchronous down counter.
- Understood the use of negative-edge triggering.
- Implemented a 4-bit ripple down counter.
- Verified the design using a testbench.
- Simulated the design using GTKWave.