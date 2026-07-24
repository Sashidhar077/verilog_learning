# Half Adder

## Aim

Design and simulate a Half Adder using Verilog HDL.

---

## Theory

A Half Adder is a combinational circuit that adds two 1-bit binary inputs and produces two outputs:

- **Sum (S)**
- **Carry (C)**

It does not have a carry input, making it suitable only for adding two single-bit numbers.

---

## Boolean Expressions

```
Sum   = A ^ B
Carry = A & B
```

---

## Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

---

## Files

- `half_adder.v` - Verilog RTL
- `half_adder_tb.v` - Testbench
- `README.md` - Documentation

---

## Simulation Commands

```bash
iverilog -o half_adder_sim half_adder.v half_adder_tb.v
vvp half_adder_sim
gtkwave half_adder.vcd
```

---

## Expected Output

| Time (ns) | A | B | Sum | Carry |
|-----------|---|---|-----|-------|
| 0         | 0 | 0 |  0  |   0   |
| 10        | 0 | 1 |  1  |   0   |
| 20        | 1 | 0 |  1  |   0   |
| 30        | 1 | 1 |  0  |   1   |

---

## Learning Outcome

- Learned the working principle of a Half Adder.
- Understood how XOR generates the Sum output.
- Understood how AND generates the Carry output.
- Implemented the Half Adder in Verilog HDL.
- Verified the design using a testbench.
- Observed the output waveform using GTKWave.