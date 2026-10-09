# Daily Practice: SystemVerilog, Python, C

A daily habit repo: one small problem per track, every day, no end date.
Difficulty rises slowly while covering the full range of topics.

## Daily routine (about 2 hours)

| Track | Time | Focus |
|---|---|---|
| SystemVerilog | 40 min | Circuit design (combinational and sequential blocks) |
| C | 40 min | Pointers, structs, memory, linked structures |
| Python | 40 min | Pure DSA problems |

## Track rules

- **SystemVerilog**: circuit problems (counters, muxes, adders, FSMs). Simulate every design with a testbench and check waveforms.
- **C**: pointer-focused problems. Compile with `gcc -Wall -Wextra -g`.
- **Python**: DSA only. No built-in shortcuts (`sorted`, `max`, `Counter`) unless the problem says so.

## Repo structure

```
.
├── README.md
├── day01/
│   ├── solution.c
│   ├── solution.py
│   └── solution.sv        (+ tb.sv)
├── day02/
...
```

## Problem log

### Phase 1: same problem in all three languages (Days 1-9)

| Day | Problem | Notes |
|---|---|---|
| 1 | Count even elements in an array of 8 | |
| 2 | Reverse an array of 8 | SV: pure rewiring |
| 3 | Sum and average of 8 numbers | SV: widen the sum to avoid overflow |
| 4 | Second largest value | Single pass, no sorting |
| 5 | Palindrome check | |
| 6 | Count occurrences of a target | |
| 7 | Bubble sort | SV: sequential FSM, one swap per clock |
| 8 | Circular buffer FIFO | SV: push/pop, full/empty flags |
| 9 | Linear search | |

### Phase 2: separate tracks (Day 10 onward)

| Day | C / Python (DSA) | SystemVerilog (circuit) |
|---|---|---|
| 10 | Binary search | 4-bit synchronous up/down counter |
| 11 | Selection sort | 2-to-1 and 4-to-1 mux |
| 12 | Insertion sort | 4-to-2 priority encoder |
| 13 | Merge two sorted arrays | Binary to Gray code and back |
| 14 | Stack (array-backed) | 4-bit magnitude comparator |
| 15 | Circular queue | Full adder and 4-bit ripple carry adder |
| 16 | Linked list: insert at end, traverse | 4-bit barrel shifter |

### Phase 3: C pointers, Python DSA, SystemVerilog circuits (Day 17 onward)

| Day | C (pointers) | Python (DSA) | SystemVerilog (circuit) |
|---|---|---|---|
| 17 | Struct basics, then linked list insert at front | | 4-bit Johnson counter |
| 18 | Insert at end of linked list | Find duplicates with a hash map | D flip-flops (async vs sync reset) |
| 19 | Delete a node by value | Balanced brackets with a stack | 4-bit shift register (SIPO) |

## Per-day checklist

- [ ] SystemVerilog solved and simulated
- [ ] C solved, compiled without warnings
- [ ] Python solved

## Tools

- **SystemVerilog**: EDA Playground, or Icarus Verilog / Verilator locally
- **C**: gcc, gdb
- **Python**: Python 3.10+

## How to use

Ask for the next day's set by saying "next" or "Day N". Send your solutions for review and the code gets checked for language-specific mistakes (pointer handling in C, blocking vs non-blocking in SV, and so on).
