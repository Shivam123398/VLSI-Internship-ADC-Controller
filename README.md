# RTL Design and ASIC Implementation of an ADC-Based Sensor Data Acquisition Controller

## 1. Project Overview

This project implements an 8-bit ADC-based sensor data acquisition controller using Verilog HDL. The controller captures digital ADC sample data, stores it, and indicates when the output data is valid.

The project covers RTL design, functional simulation, logic synthesis, timing constraints, and ASIC physical-design implementation using the OpenROAD flow with the Nangate45 platform.

**Important:** The project implements the digital controller, not the analog-to-digital converter itself.

## 2. Project Objectives

- Design a synthesizable RTL controller.
- Implement a finite state machine (FSM).
- Verify the controller using a Verilog testbench.
- Perform logic synthesis using Yosys.
- Study floorplanning, placement, clock-tree synthesis, and routing.
- Generate physical-design outputs and analyze timing and estimated power.

## 3. Tools and Technology

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- OpenROAD
- OpenROAD Flow Scripts
- Nangate45 standard-cell platform
- Visual Studio Code
- Ubuntu on WSL

## 4. Controller Interface

### Inputs

- `clk`: System clock.
- `reset`: Synchronous active-high reset.
- `start`: Starts a data-acquisition operation.
- `adc_data[7:0]`: 8-bit digital ADC sample.

### Outputs

- `data_out[7:0]`: Captured sample at the output.
- `data_valid`: Indicates that output data is valid.
- `busy`: Indicates that the controller is performing an operation.

## 5. Finite State Machine

The controller uses four states:

1. **IDLE:** Waits for the start signal.
2. **ACQUIRE:** Captures the digital ADC sample into an internal register.
3. **STORE:** Transfers the captured sample to the output register.
4. **VALID:** Indicates that the output data is ready.

State sequence:

`IDLE → ACQUIRE → STORE → VALID → IDLE`

## 6. Functional Verification

The testbench checked three sample values.

| Expected Sample | Actual Output | Result |
|---:|---:|---|
| 100 | 100 | PASS |
| 150 | 150 | PASS |
| 200 | 200 | PASS |

- Total PASS: 3
- Total FAIL: 0
- Overall simulation result: PASS

The waveform file is available at `Simulation/adc_waveform.vcd`.

## 7. ASIC Physical-Design Results

The design was implemented using the OpenROAD flow and the Nangate45 platform.

| Parameter | Reported Result |
|---|---:|
| Die area | 2,419.66 µm² |
| Core area | 1,472.31 µm² |
| Final standard-cell instance area | 246.316 µm² |
| Standard-cell utilization | 16.73% |
| Final component instances | 504 |
| Standard-cell instances | 161 |
| Sequential-cell instances | 22 |
| Configured clock period | 10 ns |
| Critical-path delay reported by flow | 2.2951 ns |
| Setup worst slack | +7.73541 ns |
| Hold worst slack | +0.11557 ns |
| Setup violation count | 0 |
| Hold violation count | 0 |
| Total estimated power | 32.3797 µW |

These values are tool-reported results under the configured design constraints. Power is an estimate, not a measurement from fabricated hardware.

The detailed-routing log reports zero violations in its final routing iteration and zero antenna net and pin violations. This does not, by itself, establish complete physical sign-off.

## 8. Generated Physical-Design Files

The `pnr/` directory contains:

- `6_final.gds` — final layout output.
- `6_final.def` — physical-design description.
- `6_final.v` — final implemented Verilog netlist.
- `6_final.spef` — extracted parasitic data.

## 9. Project Structure

- `RTL/adc_controller.v` — main RTL design.
- `Testbench/tb_adc_controller.v` — functional testbench.
- `Simulation/adc_waveform.vcd` — simulation waveform.
- `Simulation/adc_controller_netlist.v` — generic synthesized netlist.
- `Simulation/synthesis_report.txt` — synthesis log.
- `Simulation/asic_summary.txt` — summary file.
- `Documentation/FSM_and_Verification.txt` — FSM and verification notes.
- `Documentation/FSM_Diagram.png` — FSM diagram.
- `Documentation/ADC_Controller_Waveform.png` — waveform image.
- `Results/` — physical-design screenshots.
- `reports/6_finish.rpt` — final timing and power report.
- `synthesis/` — synthesis statistics and checks.
- `constraints/constraint.sdc` — timing constraints.
- `pnr/` — final physical-design outputs.
- `asic_summary.txt` — physical-design summary.

## 10. Limitations

- The ADC is represented by an 8-bit digital input; analog conversion is not implemented.
- The design uses an educational Nangate45 platform.
- Timing and power depend on the configured constraints, libraries, and estimation assumptions.
- Full physical sign-off, including independent DRC and power-grid validation, is required before claiming fabrication readiness.

## 11. Future Work

- Interface the controller with a real ADC device.
- Add sensor communication protocols and more robust control logic.
- Expand verification with reset, back-to-back requests, and boundary-value tests.
- Perform additional physical verification and power-grid analysis.
- Explore implementation using a suitable target technology and PDK.