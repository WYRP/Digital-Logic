# VHDL Project Series by Yongru Pan and Chenyi Xu

This repository contains a series of six VHDL projects that explore various aspects of digital circuit design using VHDL. Each project builds upon previous concepts and components, demonstrating different digital logic designs and testbenches.

## Table of Contents

1. [Project 1: OR Gate Simulation](#project-1-or-gate-simulation)
2. [Project 2: Basic Logic Gate Circuits](#project-2-basic-logic-gate-circuits)
3. [Project 3: Flip-Flops and Sequential Logic](#project-3-flip-flops-and-sequential-logic)
4. [Project 4: Counters and Registers](#project-4-counters-and-registers)
5. [Project 5: Clock Divider and JK Flip-Flop](#project-5-clock-divider-and-jk-flip-flop)
6. [Project 6: Finite State Machine and Sequence Detector](#project-6-finite-state-machine-and-sequence-detector)

---

### Project 1: OR Gate Simulation

- **Files**: `or_gate_testbench.vhd`, `testbench.vhd`
- **Description**: This project focuses on simulating a simple OR gate. The included testbench verifies the correct operation of an OR gate by checking different input combinations.
- **Instructions**:
  1. Open the project file in your VHDL simulator.
  2. Compile and run `or_gate_testbench.vhd` to see the OR gate behavior.

---

### Project 2: Basic Logic Gate Circuits

- **Files**: `basic_logic_testbench.vhd`, `basic_circuit.vhd`
- **Description**: This project includes testbenches for basic logic gates (AND, OR, NOT) and simple circuits. It verifies the correct operation of each gate and demonstrates their combined use in simple circuits.
- **Instructions**:
  1. Load the project files in your simulation software.
  2. Run `basic_logic_testbench.vhd` to validate the operation of basic logic gates.

---

### Project 3: Flip-Flops and Sequential Logic

- **Files**: `flipflop_testbench.vhd`, `d_flipflop.vhd`
- **Description**: Project 3 introduces flip-flops, focusing on D-type flip-flops. This project demonstrates flip-flop behavior, verifying setup and hold times, and observing state changes.
- **Instructions**:
  1. Compile the files in your VHDL tool.
  2. Run `flipflop_testbench.vhd` to view flip-flop operation over clock cycles.

---

### Project 4: Counters and Registers

- **Files**: `counter_testbench.vhd`, `counter.vhd`, `register.vhd`
- **Description**: This project implements and tests counters and registers. The counter module increments/decrements based on control signals, while the register stores values.
- **Instructions**:
  1. Open the project in your simulation environment.
  2. Compile and execute `counter_testbench.vhd` to test counting and register functionality.

---

### Project 5: Clock Divider and JK Flip-Flop

- **Files**: `clock_divider.vhd`, `JK_flipflop.vhd`, `clock_divider_testbench.vhd`
- **Description**: This project introduces a clock divider and a JK flip-flop. The clock divider reduces the clock frequency, which is essential for timing control in digital circuits, while the JK flip-flop is tested for its state-holding properties.
- **Instructions**:
  1. Load the project and compile `clock_divider_testbench.vhd`.
  2. Observe the reduced clock signal and JK flip-flop operations under various input conditions.

---

### Project 6: Finite State Machine and Sequence Detector

- **Files**: `Chenyi_Xu_FSM.vhd`, `ROM.vhd`, `Yongru_Pan_sequence_detector.vhd`
- **Description**: This advanced project includes a finite state machine (FSM) and a sequence detector. The FSM controls system states, while the sequence detector recognizes specific binary sequences in a stream.
- **Instructions**:
  1. Open the project files in a VHDL-compatible simulator.
  2. Compile and run `Yongru_Pan_sequence_detector.vhd` to observe the FSM and sequence detection.

---

## General Requirements

- **VHDL Simulation Tool**: Projects are compatible with tools like ModelSim, Quartus, or Vivado.
- **Quartus Project Support**: Some projects may include `.qpf` files, ideal for Quartus.

## License

This project series is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
