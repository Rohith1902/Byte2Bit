# SystemVerilog Practice

Daily SystemVerilog problems. Early days map array problems to hardware, then the track moves into circuit building blocks.

## Rules

- Every design gets a testbench.
- Check waveforms, not just printed output.
- Use `always_comb` for combinational logic and `always_ff` for sequential logic.
- Use non-blocking (`<=`) in `always_ff`, blocking (`=`) in `always_comb`.
- Watch bit widths, especially for sums and counters.

## Tools

EDA Playground, or Icarus Verilog / Verilator locally.

## Structure

```
systemverilog/
├── README.md
├── day01/design.sv
│   └── tb.sv
├── day02/design.sv
...
```

## Problem log

### Array problems mapped to hardware (Days 1-9)

| Day | Problem | Notes |
|---|---|---|
| 1 | Count even elements in `logic [7:0] arr [0:7]` | `always_comb`, `logic [3:0] count` |
| 2 | Reverse an array | Just wiring: `reversed[i] = arr[7-i]` |
| 3 | Sum of 8 values | Output `logic [10:0]` to avoid overflow |
| 4 | Second largest | Two comparisons updated in the same combinational pass |
| 5 | Palindrome check | Compare all pairs in parallel and AND the results |
| 6 | Count occurrences of `target` | Sum 8 one-bit match flags |
| 7 | Bubble sort | Sequential: one compare/swap per clock, `done` flag |
| 8 | Circular buffer FIFO | `push_en`, `pop_en`, `full`, `empty` |
| 9 | Linear search | Outputs `index` and `found` |

### Circuit building blocks (Day 10 onward)

| Day | Circuit | Key idea |
|---|---|---|
| 10 | 4-bit synchronous up/down counter | Async active-low reset, enable, wraparound |
| 11 | 2-to-1 and 4-to-1 mux | `case` vs structural instantiation |
| 12 | 4-to-2 priority encoder | `if / else if` chain, `valid` output |
| 13 | Binary to Gray code and back | XOR chains |
| 14 | 4-bit magnitude comparator | `gt`, `eq`, `lt` outputs |
| 15 | Full adder, 4-bit ripple carry adder | First use of module instantiation |
| 16 | 4-bit barrel shifter | Direction and shift amount inputs |
| 17 | 4-bit Johnson counter | `q <= {q[2:0], ~q[3]}` |
| 18 | D flip-flops: async vs sync reset | Compare waveforms with reset between clock edges |
| 19 | 4-bit shift register (serial-in, parallel-out) | `q <= {q[2:0], serial_in}` when `en` is high |

## Checklist

- [ ] Compiles with no errors or warnings
- [ ] Testbench covers reset, normal operation, and edge cases
- [ ] Waveforms match expected behaviour
