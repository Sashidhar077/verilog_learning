# XNOR Gate

## Aim

Design and simulate a 2-input XNOR gate using Verilog HDL.

---

## Theory

An XNOR (Exclusive-NOR) gate outputs logic HIGH (1) when both inputs are the same and logic LOW (0) when the inputs are different.

Boolean Expression:

Y = ~(A ^ B)

---

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## Files

- `xnor_gate.v` - Verilog module
- `xnor_gate_tb.v` - Testbench
- `README.md` - Documentation

---

## Simulation Commands

```bash
iverilog -o xnor_gate_sim xnor_gate.v xnor_gate_tb.v
vvp xnor_gate_sim
gtkwave xnor_gate.vcd
```

---

## Expected Output

The waveform should match the truth table.

| Time (ns) | A | B | Y |
|-----------|---|---|---|
| 0         | 0 | 0 | 1 |
| 10        | 0 | 1 | 0 |
| 20        | 1 | 0 | 0 |
| 30        | 1 | 1 | 1 |

---

## Learning Outcome

- Learned the operation of a 2-input XNOR gate.
- Designed an XNOR gate using Verilog HDL.
- Verified the design using a testbench.
- Observed the output waveform in GTKWave.