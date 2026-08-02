# 4-bit Register

## Aim
Design and simulate a basic 4-bit Register with an active-low asynchronous reset and an enable signal using Verilog HDL.

---

## Theory
A **Register** is a group of Flip-Flops used to store multiple bits of data simultaneously. 
- When the **enable (`en`)** signal is HIGH, the register captures the data at `d_in` on the rising edge of the clock. 
- When the **enable** is LOW, the register ignores the input and holds its current stored value. 
This behaves identically to a PIPO (Parallel-In Parallel-Out) shift register but is the standard way to model variables/storage in CPU and datapath design.



Registers are fundamental storage elements used in processors, memory systems, and digital circuits.

---

## Block Diagram

```
        +----------------------+
 D[3:0] |                      |
 ------>|     4-bit Register   |-----> Q[3:0]
        |                      |
 clk --->                      |
 rst --->                      |
        +----------------------+
```
---

## Files
- `register_4bit.v`
- `register_4bit_tb.v`
- `README.md`

---

## Simulation Commands

```bash
iverilog -o a.out register_4bit.v register_4bit_tb.v
vvp a.out
gtkwave register_4bit.vcd