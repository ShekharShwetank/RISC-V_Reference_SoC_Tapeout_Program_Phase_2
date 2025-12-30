# RISC-V Reference SoC Tapeout Program - Phase 2

## Overview

This repository contains the comprehensive Phase 2 implementation of the RISC-V Reference SoC Tapeout Program, developed by IIT Gandhinagar. The project focuses on the complete design, verification, synthesis, and validation flow for the VSD Caravel RISC-V System-on-Chip (SoC) targeting the SCL180 (180nm) technology node from Synopsys.

The work demonstrates end-to-end ASIC design methodology, from RTL development through physical design, using both open-source and commercial EDA tools. The SoC integrates a VexRiscv RISC-V processor core with the Efabless Caravel framework, implementing a full-featured management and user project infrastructure.

## Repository Structure

```
Phase_2/
├── Reference/                          # Architecture analysis and documentation
│   ├── Arhitecture_Overview.md         # Detailed SoC architecture breakdown
│   ├── COMPLETE_VEXRISCV_ANALYSIS.txt  # VexRiscv CPU core analysis
│   ├── housekeeping_analysis.txt       # Housekeeping module analysis
│   ├── vexriscv_analysis_part1.txt     # VexRiscv analysis (part 1)
│   ├── vexriscv_analysis_part2.txt     # VexRiscv analysis (part 2)
│   └── vexriscv_analysis_part3_final.txt # VexRiscv analysis (final)
├── Task_1/                             # RTL vs GLS Verification
│   ├── README.md                       # Task 1 documentation
│   └── assets/                         # Supporting files
├── Task_2/                             # RTL Simulation, Synthesis, GLS
│   ├── README.md                       # Task 2 documentation
│   ├── assets/                         # Supporting files and logs
│   ├── GLS/                            # Gate-level simulation files
│   ├── RTL/                            # RTL simulation files
│   └── Synthesis/                      # Synthesis outputs
├── Task_3/                             # VCS RTL/GLS and DC_TOPO Synthesis
│   ├── README.md                       # Task 3 documentation
│   ├── assets/                         # Supporting files
│   └── logs/                           # Synthesis and simulation logs
├── Task_4/                             # POR Removal and Final Validation
│   ├── README.md                       # Task 4 documentation
│   ├── assets/                         # Analysis files
│   ├── Task_NoPOR_Final_GLS/           # POR-free GLS results
│   └── vsdRiscvScl180/                 # POR-free design files
├── Task_5/                             # Physical Design Implementation
│   └── vsdRiscvScl180/                 # Complete design with PD
│       ├── dv/                         # Design verification
│       ├── gls/                        # Gate-level simulation
│       ├── pd/                         # Physical design scripts
│       ├── rtl/                        # RTL source files
│       └── synthesis/                  # Synthesis outputs
└── vsdRiscvScl180_Final/               # Final validated design
    ├── dv/                             # Verification environment
    ├── gls/                            # GLS results
    ├── pd/                             # Physical design
    ├── rtl/                            # RTL sources
    └── synthesis/                      # Synthesis artifacts
```

## Design Architecture

### SoC Overview
The VSD Caravel SoC implements a complete RISC-V based system with:
- **VexRiscv CPU Core**: RV32IM RISC-V processor with instruction cache
- **Management Core**: Housekeeping and configuration subsystem
- **User Project Area**: Configurable user logic integration
- **Memory Subsystem**: SRAM blocks and SPI flash interface
- **I/O Infrastructure**: 38 GPIO pins with configurable control
- **Clock Generation**: Digital PLL with ring oscillator
- **Power Management**: Multi-domain power architecture

### Key Components (From Reference Analysis)
- **Layer 0-3**: Foundational primitives and utilities
- **Layer 4-6**: Configuration, memory, and debug logic
- **Layer 7-8**: Clock generation and I/O structures
- **Layer 9**: GPIO control infrastructure
- **Layer 10+**: SPI interfaces and computational cores

## Task Breakdown

### Task 1: Caravel Housekeeping SPI RTL vs Gate-Level Simulation Verification
**Objective**: Verify functional equivalence between RTL and synthesized gate-level netlists for the housekeeping SPI subsystem.

**Key Activities**:
- RTL simulation using Icarus Verilog
- Gate-level simulation with synthesized netlist
- Functional verification of 19 housekeeping registers
- Waveform analysis and equivalence checking

**Results**: ✅ Both simulations passed with identical behavior, confirming synthesis correctness.

### Task 2: Functional RTL Simulation, Logic Synthesis, and Gate-Level Simulation
**Objective**: Complete end-to-end design flow from RTL to GLS using SCL180 PDK.

**Key Activities**:
- RTL functional simulation
- Logic synthesis with Synopsys DC_TOPO
- Gate-level simulation validation
- Analysis of synthesis results (area, timing, power)

**Synthesis Statistics**:
- Technology: SCL180 fs120 (180nm)
- Cell Count: 25,385 leaf cells
- Module Count: 1,453 modules
- Target Library: tsl18fs120_scl_ff

### Task 3: Synopsys VCS RTL/GLS and DC_TOPO Synthesis
**Objective**: Commercial-grade verification using Synopsys VCS and synthesis optimization.

**Key Activities**:
- VCS-based RTL simulation
- DC_TOPO synthesis with SCL180 libraries
- GLS with zero-delay I/O models
- Resolution of compilation issues and pad mismatches

**Tools Used**:
- Synopsys VCS for simulation
- Design Compiler Topographical for synthesis
- SCL180 PDK with tsl18fs120 and tsl18cio250 libraries

### Task 4: Removal of On-Chip POR and Final GLS Validation
**Objective**: Eliminate behavioral POR circuits and implement external reset-only strategy.

**Key Activities**:
- POR dependency analysis
- RTL refactoring for external reset
- DC_TOPO synthesis of POR-free design
- VCS GLS validation

**Justification**: SCL180 I/O pads provide built-in level shifting and ESD protection, making external reset sufficient and eliminating the need for unsynthesizable POR logic.

### Task 5: Physical Design Implementation
**Objective**: Complete physical design flow including placement, routing, and verification.

**Key Activities**:
- Floorplanning and placement
- Clock tree synthesis
- Routing and optimization
- DRC/LVS verification
- GDSII generation

**Outputs**: Complete physical design database ready for tapeout.

## Technology and Tools

### PDK: SCL180 (Synopsys 180nm)
- **Standard Cells**: tsl18fs120_scl (4M1L metal stack)
- **I/O Library**: tsl18cio250 (4M1L)
- **Operating Conditions**: Fast-Fast, Typical-Typical, Slow-Slow corners
- **Features**: Advanced I/O pads with built-in level shifting

### EDA Tools
- **Simulation**: Icarus Verilog, Synopsys VCS
- **Synthesis**: Synopsys Design Compiler Topographical
- **Physical Design**: Cadence Innovus (implied)
- **Verification**: Custom testbenches and GLS

## Key Achievements

1. **Functional Verification**: Complete RTL-to-GLS equivalence demonstrated
2. **Synthesis Success**: Full-chip synthesis with 25K+ cells on SCL180
3. **POR Elimination**: Research-backed removal of behavioral POR
4. **Commercial Tool Integration**: Successful use of Synopsys VCS and DC_TOPO
5. **Comprehensive Documentation**: Detailed analysis of all components
6. **Repository Standardization**: Resolved all missing files, duplicate errors, and reference warnings across the entire codebase
7. **POR Signal Tracing**: Complete tracing and thorough removal of Power-On Reset signals throughout the design hierarchy

## 🎯 Core Contributions Summary

| **Domain** | **Key Achievements** | **Impact** |
|------------|---------------------|------------|
| **Padframe Development** | Engineered SCL180-compatible padframe architecture with proper signal routing, pad cell integration, and I/O ring implementation | Created silicon-ready physical interface for SoC-to-package connectivity |
| **Processor Comparison** | Conducted architectural analysis comparing PicoRV32 (modular, 830 lines) vs VexRiscv (monolithic, 8473 lines) implementations | Documented maintainability trade-offs affecting tapeout readiness and debug efficiency |
| **VexRiscv Adaptation** | Modified and validated VexRiscv processor RTL for seamless integration with SCL180 PDK constraints and Caravel infrastructure | Resolved compilation issues, timing constraints, and interface compatibility challenges |
| **Firmware & RTL Integration** | Analyzed and validated firmware-to-hardware signal flow from C code through Wishbone bus to physical pads | Identified critical GPIO register mapping incompatibilities between software (defs.h) and RTL implementation |
| **PDK Migration** | Led complete transition from Sky130 PDK to SCL180 PDK with library configuration, synthesis flow adaptation, and physical design integration | Established reproducible methodology for multi-PDK SoC portability |
| **RTL-GLS Correlation** | Achieved 100% functional equivalence validation between RTL and gate-level simulations using both Icarus Verilog and Synopsys VCS | Ensured design integrity across synthesis transformations with zero X-propagation |

## Results Summary

| Task | Status | Key Deliverable |
|------|--------|-----------------|
| 1 | ✅ Complete | RTL/GLS equivalence verified |
| 2 | ✅ Complete | Full synthesis flow completed |
| 3 | ✅ Complete | VCS simulation and DC_TOPO synthesis |
| 4 | ✅ Complete | POR-free design validated |
| 5 | ✅ Complete | Physical design implementation |

## Files and Logs

### Synthesis Results (Task 3)
- **Netlist**: `vsdcaravel_synthesis.v` (2.86 MB)
- **Constraints**: `vsdcaravel.sdc`
- **Reports**: QoR, area, power analysis available

### Simulation Results
- **RTL**: All testbenches pass
- **GLS**: Functional equivalence confirmed
- **Coverage**: Housekeeping SPI, GPIO, memory interfaces

### Analysis Documents
- **Architecture**: Layer-by-layer SoC breakdown
- **VexRiscv**: Complete CPU core analysis
- **POR Removal**: Technical justification for external reset

## Usage and Reproduction

### Prerequisites
- SCL180 PDK access
- Synopsys EDA tools (VCS, DC_TOPO)
- Linux environment with standard ASIC tools

### Running Simulations
1. Navigate to task directory
2. Follow README.md instructions
3. Use provided Makefiles and scripts

### Synthesis Flow
1. Set up SCL180 environment
2. Run `synth.tcl` with DC_TOPO
3. Analyze reports for QoR metrics

## Contributors
- IIT Gandhinagar Team
- VSD (VLSI System Design) Corporation
- Efabless Caravel Framework

## Acknowledgments
- Synopsys for SCL180 PDK
- Efabless for Caravel harness
- RISC-V Foundation
- SpinalHDL for VexRiscv generator

## License
This project is part of the VSD Caravel RISC-V SoC tapeout program. See individual files for licensing information.

---

*This README provides a comprehensive overview of Phase 2. For detailed implementation notes, refer to individual task READMEs and the Reference documentation.*