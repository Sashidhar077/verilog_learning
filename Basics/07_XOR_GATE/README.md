# XOR Gate

## Aim

Design and simulate a 2-input XOR (Exclusive OR) gate using Verilog HDL.

---

## Theory

An XOR gate outputs logic HIGH (1) only when the two inputs are different. If both inputs are the same, the output is LOW (0).

Boolean Expression:

Y = A ^ B

---

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

## Files

- `xor_gate.v` – Verilog module
- `xor_gate_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o xor_gate_sim xor_gate.v xor_gate_tb.v
vvp xor_gate_sim
gtkwave xor_gate.vcd
```

---

## Expected Output

| Time (ns) | A | B | Y |
|-----------|---|---|---|
| 0         | 0 | 0 | 0 |
| 10        | 0 | 1 | 1 |
| 20        | 1 | 0 | 1 |
| 30        | 1 | 1 | 0 |

---

## Learning Outcome

- Understood the working principle of a 2-input XOR gate.
- Implemented the XOR gate in Verilog HDL.
- Created a testbench to verify all input combinations.
- Simulated the design using Icarus Verilog.
- Analyzed the output waveform using GTKWave.