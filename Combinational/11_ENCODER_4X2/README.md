# 4-to-2 Encoder

## Aim

Design and simulate a 4-to-2 Encoder using Verilog HDL.

---

## Theory

A 4-to-2 Encoder is a combinational circuit that converts one active input out of four into a 2-bit binary code.

It assumes that **only one input is HIGH at a time**.

---

## Truth Table

| D3 | D2 | D1 | D0 | Y1 | Y0 |
|----|----|----|----|----|----|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

---

## Files

- `encoder_4x2.v` – Verilog module
- `encoder_4x2_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o encoder_4x2_sim encoder_4x2.v encoder_4x2_tb.v
vvp encoder_4x2_sim
gtkwave encoder_4x2.vcd
```

---

## Expected Output

| Time (ns) | D | Y |
|-----------|----------|----|
| 0 | 0001 | 00 |
| 10 | 0010 | 01 |
| 20 | 0100 | 10 |
| 30 | 1000 | 11 |
| 40 | 0000 | 00 |
| 50 | 0011 | 00 |
| 60 | 1111 | 00 |

---

## Learning Outcome

- Learned the working principle of a 4-to-2 Encoder.
- Understood how binary encoding is performed.
- Implemented the encoder using a `case` statement.
- Verified the design using a testbench.
- Simulated the design using Icarus Verilog.
- Analyzed the waveform using GTKWave.