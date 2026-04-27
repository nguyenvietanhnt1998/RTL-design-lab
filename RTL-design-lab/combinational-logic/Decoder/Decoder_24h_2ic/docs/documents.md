# 2-to-4 Decoder System — Design Documentation
## 1. Introduction
    This document presents the design, implementation, and verification of a 2-to-4 decoder system developed in VHDL.
    The system integrates two independent decoder modules to demonstrate different behavioral modeling approaches while maintaining identical functional behavior.

    The purpose of this project is to:

    Validate combinational logic design principles
    Compare if and case modeling styles in VHDL
    Demonstrate modular system integration
    Provide clear visualization through block diagrams and timing waveforms

## 2. System Overview
    The system consists of two parallel 2-to-4 decoders with active-high outputs:

    Decoder 1: Implemented using a case statement
    Decoder 2: Implemented using an if statement

    Each decoder operates independently on a separate subset of the input vector.

    Input / Output Summary:
    Input: sw[3:0] (4-bit switch vector)
    Output: led[7:0] (8-bit LED vector)
    Signal Mapping:
    sw[1:0] → Decoder 1 → led[3:0]
    sw[3:2] → Decoder 2 → led[7:4]`

## 3. Block Diagram
![Decoder 2-to-4 Block Diagram](Decoder24_Block-Diagram.png)
    This diagram illustrates the internal structure of a single 2-to-4 decoder.

    A 2-bit input is decoded into a one-hot 4-bit output
    Only one output line is asserted at any given time
    Outputs are active-high

    This representation emphasizes the fundamental logic mapping:

    00 → 0001
    01 → 0010
    10 → 0100
    11 → 1000

![System Block Diagram](System_Block-Diagram.png)
    This diagram shows the integration of two decoders into a single system.

    Key observations:
        - The system is modular and parallel
        - Each decoder processes independent input bits
        - Outputs are concatenated into a unified 8-bit signal

    This structure highlights:
        - Clear separation of functionality
        - Scalable design approach
        - Ease of verification and debugging

## 4. Circuit Diagram
![Decoder 2-to-4 Circuit Diagram](Decoder24_Circuit-Diagram.png) 
    The circuit-level representation illustrates the combinational logic implementation of the decoder.

    Key characteristics:
        - Built using basic logic gates (AND, NOT)
        - Each output corresponds to a unique minterm of the input variables
        - Ensures mutually exclusive activation (one-hot encoding)

    This diagram bridges the gap between:
        - Abstract behavioral VHDL
        - Physical hardware realization

## 5. Functional Behavior
    Each decoder follows a standard truth table:

|Input|Input|Output|Output|Output|Output|
|:--:|:--:|:--:|:--:|:--:|:--:|
| I1 | I0 | O3 | O2 | O1 | O0 |
| 0  | 0  | 0  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 1  | 0  | 0  |
| 1  | 1  | 1  | 0  | 0  | 0  |

    The logical expressions for the outputs:
        O0 = ~I1 AND ~I0 ;
        O1 = ~I1 AND  I0 ;
        O2 =  I1 AND ~I0 ;
        O3 =  I1 AND  I0 

    At any given time:
    Only one output is HIGH
    All other outputs remain LOW

    This ensures deterministic and predictable decoding behavior.

## 6. Simulation and Waveform Analysis
![Waveform](waveform.png)

    The waveform verifies the correctness of the system under all input combinations.

    Key Observations:
        - Complete Input Sweep
        - All 16 combinations of sw[3:0] are applied sequentially
        - Synchronized Timing
        - Each input state is held for a fixed duration, ensuring clear observation of transitions
        - Independent Decoder Operation
            sw[1:0] affects only led[3:0]
            sw[3:2] affects only led[7:4]
            One-Hot Output Behavior

    For each decoder:
    Exactly one output bit is HIGH at any time

## 7. Design Insights
    This project highlights several important engineering principles:

    * Modular Design:
        Each decoder is implemented and verified independently before integration.

    * Behavioral Modeling Comparison:
        The use of both if and case constructs demonstrates:
        - Functional equivalence
        - Differences in readability and coding style

    * Verification Strategy:
        A structured testbench ensures:
        - Full input coverage
        - Clear timing intervals
        - Easy debugging through waveform observation

## 8. Conclusion
    The implemented system successfully demonstrates a robust and modular 2-to-4 decoder design using VHDL.

    Key achievements:
        - Accurate functional behavior across all input cases
        - Clean separation between design components
        - Effective visualization through diagrams and waveform analysis

    This project reflects not only correct implementation, but also a strong emphasis on clarity, structure, and engineering communication.

## 9. Future Work
    - Extend design to 3-to-8 and 4-to-16 decoders
    - Introduce enable (EN) control signal
    - Compare synthesis results between if and case
    - Implement automated verification using assertions