# Asynchronous Up Counter

## Aim

Design and simulate a 4-bit Asynchronous (Ripple) Up Counter using Verilog HDL.

---

## Theory

An Asynchronous Up Counter is a sequential circuit in which each flip-flop is triggered by the output of the previous flip-flop instead of a common clock.

Because the clock signal "ripples" through each stage, it is also called a Ripple Counter.

---

## Features

- 4-bit Counter
- Active-Low Asynchronous Reset
- Counts from 0 to 15
- Automatically wraps back to 0 after 15

---

## Count Sequence

| Decimal | Binary |
|---------:|:------:|
| 0 | 0000 |
| 1 | 0001 |
| 2 | 0010 |
| 3 | 0011 |
| 4 | 0100 |
| 5 | 0101 |
| 6 | 0110 |
| 7 | 0111 |
| 8 | 1000 |
| 9 | 1001 |
| 10 | 1010 |
| 11 | 1011 |
| 12 | 1100 |
| 13 | 1101 |
| 14 | 1110 |
| 15 | 1111 |

---

## Files

- `asynchronous_up_counter.v` – Verilog module
- `asynchronous_up_counter_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o asynchronous_up_counter_sim asynchronous_up_counter.v asynchronous_up_counter_tb.v
vvp asynchronous_up_counter_sim
gtkwave asynchronous_up_counter.vcd
```

---

## Expected Output

The counter increments by one on each clock pulse:

```
0000
0001
0010
0011
0100
0101
0110
0111
1000
1001
1010
1011
1100
1101
1110
1111
0000
```

---

## Learning Outcome

- Learned the working principle of an Asynchronous (Ripple) Counter.
- Understood ripple propagation through flip-flops.
- Implemented a 4-bit asynchronous up counter using Verilog HDL.
- Verified the design using a testbench.
- Simulated the design using Icarus Verilog.
- Analyzed the output waveform using GTKWave.