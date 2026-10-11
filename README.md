# ADC-Based Sensor Data Acquisition Controller

## 1. Project Overview
This project implements an 8-bit ADC-based sensor data acquisition controller using Verilog HDL. It captures a digital ADC sample, stores the sample, and indicates when output data is valid.

## 2. Project Objectives
- Design a synthesizable RTL controller.
- Implement a finite state machine (FSM).
- Verify functionality using a Verilog testbench.
- Perform generic logic synthesis using Yosys.
- Study the basic ASIC implementation flow.

## 3. Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- Visual Studio Code

## 4. Controller Interface

### Inputs
- `clk`: System clock.
- `reset`: Synchronous active-high reset.
- `start`: Starts a data acquisition operation.
- `adc_data[7:0]`: 8-bit digital ADC sample.

### Outputs
- `data_out[7:0]`: Captured ADC sample at the output.
- `data_valid`: Indicates that output data is valid.
- `busy`: Indicates that the controller is performing an operation.

## 5. FSM States
1. IDLE
2. ACQUIRE
3. STORE
4. VALID

State sequence: `IDLE -> ACQUIRE -> STORE -> VALID -> IDLE`

## 6. Functional Verification
The testbench checked three ADC samples.

| Expected Sample | Actual Output | Result |
|---:|---:|---|
| 100 | 100 | PASS |
| 150 | 150 | PASS |
| 200 | 200 | PASS |

- Total PASS: 3
- Total FAIL: 0
- Overall simulation result: PASS

## 7. Generic Synthesis Results
- Top module: `adc_controller`
- Total generic cells: 31
- DFF cells reported: 4
- Structural problems reported by Yosys: 0

Note: These are generic synthesis statistics. They are not actual ASIC area, power, timing, or post-layout results.

## 8. Project Structure
- `RTL/adc_controller.v` - Main RTL design
- `Testbench/tb_adc_controller.v` - Functional testbench
- `Simulation/adc_waveform.vcd` - Simulation waveform
- `Simulation/adc_controller_netlist.v` - Generic synthesized netlist
- `Simulation/synthesis_report.txt` - Yosys synthesis log
- `Simulation/asic_summary.txt` - Synthesis summary
- `Documentation/FSM_and_Verification.txt` - FSM and verification notes

## 9. Future Work
- Standard-cell technology mapping
- Static timing analysis
- ASIC physical-design implementation
- Area and power estimation using a compatible technology library

## 10. Project Limitation
The ADC is represented by an 8-bit digital input. The RTL controller does not perform analog-to-digital conversion itself.
