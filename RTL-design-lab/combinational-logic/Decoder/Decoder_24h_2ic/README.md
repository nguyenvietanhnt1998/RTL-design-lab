# 2-to-4 Decoder System using VHDL (Dual Implementation: if & case)

## Overview 
This project implements a digital system composed of two independent 2-to-4 decoders with active-high outputs, described in VHDL.
The primary objective is to demonstrate two different behavioral modeling styles in VHDL:

One decoder implemented using the case statement
One decoder implemented using the if statement

By placing both implementations in a single system, the design allows direct comparison in terms of readability, structure, and synthesis behavior.

## System Architecture
The top-level module, Decoder_24h_2ic, integrates two submodules:

Decoder_24h_case
Decoder_24h_if

* Inputs: 
sw[3:0] — 4-bit input vector (switches)
* Outputs:
led[7:0] — 8-bit output vector (LEDs)

## Signal Mapping
The system is partitioned into two parallel decoding paths:
1. Decoder 1: Decoder_24h_case
Input: sw[1:0]
Output: led[3:0]
Implementation: case statement

2. Decoder 2: Decoder_24h_if
Input: sw[3:2]
Output: led[7:4]
Implementation: if statement

Each decoder independently converts a 2-bit input into a 4-bit one-hot output.

## Functional Behavior
For each 2-bit input:

Only one output line is asserted ('1')
All other outputs remain deasserted ('0')

Truth Table:
|Input|Input|Output|Output|Output|Output|
|:--:|:--:|:--:|:--:|:--:|:--:|
| I1 | I0 | O3 | O2 | O1 | O0 |
| 0  | 0  | 0  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 1  | 0  | 0  |
| 1  | 1  | 1  | 0  | 0  | 0  |

## Verification

The system behavior is verified through:

Simulation waveform analysis
Real-time observation using physical switches (sw) and LEDs (led)

By toggling the switches, users can visually confirm correct decoding via LED patterns.

## Key Takeaways
Demonstrates modular design in VHDL
Highlights differences between if and case constructs
Reinforces understanding of combinational logic design
Provides a simple yet effective hardware verification setup

## Future Improvements
Extend to larger decoders (e.g., 3-to-8, 4-to-16)
Add enable (EN) control signal
Implement testbench for automated verification
Compare synthesis results (area, timing) between if and case