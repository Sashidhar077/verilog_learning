# 4-bit Arithmetic Logic Unit (ALU)

## Aim
Design and simulate a 4-bit ALU performing 8 distinct arithmetic and logical operations using Verilog HDL.

---

## Theory
The Arithmetic Logic Unit (ALU) is the core computational component of a CPU. It performs both arithmetic (addition, subtraction) and logical (AND, OR, NOT, Shifts) operations on integer binary numbers. 

A 3-bit selector signal (`ALU_Sel`) dictates which of the 8 operations the ALU will perform on the 4-bit input operands (`A` and `B`). 

- **Inputs:** `A` (4 bits), `B` (4 bits), `ALU_Sel` (3 bits)
- **Outputs:** `ALU_Out` (4 bits), `CarryOut` (1 bit)

---

## Operation Table

| ALU_Sel | Operation               | Syntax (Verilog) |
|:-------:|:------------------------|:-----------------|
| `000`   | Addition                | `A + B`          |
| `001`   | Subtraction             | `A - B`          |
| `010`   | Logical AND             | `A & B`          |
| `011`   | Logical OR              | `A | B`          |
| `100`   | Logical XOR             | `A ^ B`          |
| `101`   | Logical NOT (on A)      | `~A`             |
| `110`   | Shift Left Logical (A)  | `A << 1`         |
| `111`   | Shift Right Logical (A) | `A >> 1`         |

---

## Files
- `alu_4bit.v` – RTL Design
- `alu_4bit_tb.v` – Testbench
- `README.md` – Documentation

---

## Simulation Commands

```bash
iverilog -o alu_4bit_sim alu_4bit.v alu_4bit_tb.v
vvp alu_4bit_sim
gtkwave alu_4bit.vcd