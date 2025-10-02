# FSM-based Controller Pre-Silicon Verification

This repository contains the complete design and **pre-silicon verification** of a **Finite State Machine (FSM) based controller** implemented in **Verilog HDL**. FSM controllers are widely used in digital systems to control sequential operations and ensure deterministic behavior. This project demonstrates the design, simulation, and functional verification of an FSM controller with multiple states, input stimuli, and output monitoring.

## Project Overview
The FSM controller in this project manages three states: **IDLE, RUN, and STOP**.
- **Inputs:** `start` and `stop` to control state transitions
- **Output:** `running` to indicate active operation

The design ensures **deterministic state transitions** based on the clock and input signals. It is fully **synthesizable**, making it suitable for FPGA or ASIC deployment.

Pre-silicon verification is performed using a **comprehensive testbench and assertions**, ensuring correctness before hardware implementation. Functional coverage achieved is **>95% across all input scenarios**, reducing design risks.

## Project Structure
FSM_Controller_Project/
├── src/
│   └── fsm_controller.v        # FSM Verilog design
├── tb/
│   └── tb_fsm_controller.v     # Testbench and assertions
├── sim/
│   └── simulation.do            # Simulation script
└── README.md                    # Project description

## Features
- Three-state FSM: IDLE, RUN, STOP
- Input control: `start`, `stop`
- Output signal: `running`
- Modular and scalable Verilog design
- Testbench with **input stimulus generation**
- **Assertions** for functional correctness
- Verified with **waveform analysis**
- Compatible with **ModelSim, Vivado**, or any Verilog simulator

## Usage Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/username/FSM_Controller_Project.git
   ```
2. Open the project in a Verilog-supported simulator.
3. Run the testbench:
   ```bash
   vsim work.tb_fsm_controller
   ```
4. Observe waveforms to validate state transitions and output behavior.
5. Optionally, modify the testbench to test custom scenarios.



## Outcome
This project demonstrates a **fully functional FSM controller** with verified pre-silicon behavior. It provides hands-on experience in **digital design, verification, and simulation**, and serves as a foundation for building more complex sequential digital systems.
