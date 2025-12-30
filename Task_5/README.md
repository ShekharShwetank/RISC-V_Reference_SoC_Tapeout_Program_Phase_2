# Task 5: Physical Design Environment Setup - VSD Caravel RISC-V SoC

## Overview

This task establishes a comprehensive physical design environment for the VSD Caravel RISC-V System-on-Chip using Synopsys IC Compiler II (ICC2). The implementation leverages the ICC2 workshop collaterals as a foundation, providing a complete PD flow demonstration that can be adapted for the VSD Caravel SoC tapeout.

**Design Context**: VSD Caravel RISC-V SoC (vsdcaravel)
**Technology**: SCL180 180nm (target) / FreePDK45 (demonstration)
**Tool**: Synopsys IC Compiler II
**Objective**: Establish PD methodology and validate flow for RISC-V SoC tapeout

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Repository Structure](#repository-structure)
3. [Prerequisites](#prerequisites)
4. [Environment Setup](#environment-setup)
5. [Physical Design Flow](#physical-design-flow)
6. [Demonstration Design](#demonstration-design)
7. [Reports and Outputs](#reports-and-outputs)
8. [VSD Caravel Adaptation](#vsd-caravel-adaptation)
9. [Troubleshooting](#troubleshooting)
10. [References](#references)

---

## Project Overview

### Objective
Set up a complete physical design environment demonstrating:
- **Floorplanning**: Die/core area definition and I/O placement
- **Power Planning**: Power grid design and IR drop analysis
- **Placement**: Standard cell and macro placement optimization
- **Clock Tree Synthesis**: Skew minimization and latency control
- **Routing**: Signal and power routing with DRC compliance
- **Signoff Checks**: Timing, DRC, LVS, and antenna validation

### Design Context
While the demonstration uses a `raven_wrapper` design (from ICC2 workshop), the flow and scripts are designed to be directly applicable to the VSD Caravel SoC with minimal modifications.

### Key Features Demonstrated
- Hierarchical design handling
- Mixed-signal integration
- Multi-voltage domain management
- Timing closure techniques
- Manufacturability validation

---

## Repository Structure

```
Task_5/
└── vsdRiscvScl180/
    ├── dv/                          # Verification (shared with other tasks)
    ├── gls/                         # Gate-level simulation
    ├── rtl/                         # RTL sources
    ├── synthesis/                   # Synthesis outputs
    └── pd/                          # Physical Design Environment
        ├── icc2/                    # ICC2 working directory
        │   ├── icc2_workshop_collaterals/  # Workshop base files
        │   ├── outputs/             # PD outputs and results
        │   ├── reports/             # Analysis reports
        │   └── [`tcl/`](pd/icc2/tcl/)                 # TCL scripts
        └── icc2_workshop_collaterals/  # Workshop collaterals
            ├── pnrScripts/          # P&R scripts
            ├── sram/                # Memory macros
            ├── *.lef                # Library files
            ├── *.lib                # Timing libraries
            ├── *.tf                 # Technology files
            ├── *.v                  # Design sources
            └── README.md            # Workshop documentation
```

---

## Prerequisites

### Software Requirements
- **Synopsys IC Compiler II**: Version U-2022.12 or later
- **License**: ICC2 license with physical design features
- **OS**: Linux (RHEL/CentOS 7+ recommended)
- **Memory**: 32GB RAM minimum, 64GB recommended

### Hardware Requirements
- **CPU**: 8 cores minimum for parallel processing
- **Storage**: 100GB free space for libraries and databases
- **Network**: License server access

### Input Files
- **Netlist**: [`raven_wrapper.synth.v`](Task_5/vsdRiscvScl180/pd/icc2_workshop_collaterals/raven_wrapper.synth.v) (demonstration design)
- **Constraints**: [`raven_wrapper.sdc`](Task_5/vsdRiscvScl180/pd/icc2_workshop_collaterals/raven_wrapper.sdc) (timing constraints)
- **Libraries**: [`nangate_stdcell.lef`](Task_5/vsdRiscvScl180/pd/icc2_workshop_collaterals/nangate_stdcell.lef), [`nangate45nm.lib`](Task_5/vsdRiscvScl180/pd/icc2_workshop_collaterals/nangate45nm.lib)
- **Technology**: [`nangate.tf`](Task_5/vsdRiscvScl180/pd/icc2_workshop_collaterals/nangate.tf) (FreePDK45 technology files)
- **Memory**: [`sram_32_1024_freepdk45.lef`](Task_5/vsdRiscvScl180/pd/icc2_workshop_collaterals/sram_32_1024_freepdk45.lef) (SRAM macros)
---

## Environment Setup

### 1. Directory Structure
```bash
cd /path/to/Task_5/vsdRiscvScl180/pd
export PD_HOME="$(pwd)"
export ICC2_WORKSHOP="$PD_HOME/icc2_workshop_collaterals"
export ICC2_RUN="$PD_HOME/icc2"
```

### 2. ICC2 Environment
```bash
# Set ICC2 paths
export ICC2_HOME="/path/to/synopsys/icc2/U-2022.12"
export PATH="$ICC2_HOME/bin:$PATH"
export SNPSLMD_LICENSE_FILE="port@license_server"

# Create working directory
mkdir -p $ICC2_RUN
cd $ICC2_RUN
```

### 4. Running ICC2 Scripts
```bash
# Start ICC2 shell
icc2_shell

# Source setup and run floorplan
source ../icc2_workshop_collaterals/icc2_common_setup.tcl
source ../icc2_workshop_collaterals/icc2_dp_setup.tcl
source tcl/floorplan.tcl

# Or run individual commands
icc2_shell -f tcl/floorplan.tcl
```

### 3. Library Setup
```bash
# Copy required libraries to working directory
cp $ICC2_WORKSHOP/*.lef $ICC2_RUN/
cp $ICC2_WORKSHOP/*.lib $ICC2_RUN/
cp $ICC2_WORKSHOP/*.tf $ICC2_RUN/
cp $ICC2_WORKSHOP/*.tluplus $ICC2_RUN/
```

---

## Physical Design Flow

### Phase 1: Initialization and Floorplanning

#### Script: `init_design.mcmm_example.auto_expanded.tcl`
**Purpose**: Set up multi-corner multi-mode (MCMM) analysis

**Key Configurations**:
- Define timing corners (TT, FF, SS)
- Set up operating modes
- Configure analysis views

#### Script: `floorplan.tcl`
**Location**: [`pd/icc2/tcl/floorplan.tcl`](Task_5/vsdRiscvScl180/pd/icc2/tcl/floorplan.tcl)
**Purpose**: Create initial floorplan and power structure

**Key Steps**:
1. **Library Setup**:
   ```tcl
   set TECH_FILE "$ICC2_RUN/nangate.tf"
   set REF_LEFS [list $ICC2_RUN/nangate_stdcell.lef $ICC2_RUN/sram_32_1024_freepdk45.lef]
   ```

2. **Design Import**:
   ```tcl
   read_verilog -top raven_wrapper $ICC2_WORKSHOP/pnrScripts/raven_wrapper.synth.v
   read_sdc $ICC2_WORKSHOP/raven_wrapper.sdc
   ```

3. **Floorplan Creation**:
   ```tcl
   initialize_floorplan \
       -core_utilization 0.7 \
       -core_aspect_ratio 1.0 \
       -side_length 1000
   ```

**Actual Script Snippet**:
```tcl
# open the existing library and block/design
open_lib ./outputs/works/ORCA_TOP.nlib/
open_block ORCA_TOP

#access the cells and number of cells in the design
get_cells
sizeof_collection [get_cells]
```

### Phase 2: Power Planning

#### Key Activities:
- **Power Ring Creation**: VDD/VSS rings around core
- **Power Straps**: Horizontal/vertical metal layers
- **Power Pad Connection**: I/O pad power routing
- **IR Drop Analysis**: Static and dynamic analysis

### Phase 3: Placement

#### Standard Cell Placement:
- Congestion-aware placement
- Timing-driven optimization
- Macro placement constraints

#### I/O Placement:
- Peripheral I/O pad placement
- Signal integrity considerations
- Package pin mapping

### Phase 4: Clock Tree Synthesis

#### CTS Implementation:
```tcl
clock_opt -only_cts
```

#### Optimization Goals:
- Skew < 50ps across die
- Insertion delay minimization
- Power consumption control

### Phase 5: Routing and Optimization

#### Global Routing:
- Congestion-driven path finding
- Timing budget allocation

#### Detail Routing:
- Via optimization
- Metal fill for density
- Antenna effect mitigation

### Phase 6: Signoff and Verification

#### Checks Performed:
- **DRC**: Design rule compliance
- **LVS**: Netlist vs layout matching
- **Timing**: PrimeTime signoff analysis
- **Power**: Final IR drop verification

---

## Demonstration Design

### Raven Wrapper SoC
The demonstration uses a `raven_wrapper` design featuring:
- **CPU**: PicoRV32 RISC-V core
- **Peripherals**: SPI, UART, GPIO
- **Memory**: 32KB SRAM blocks
- **I/O**: Mixed-signal interface

### Design Hierarchy
```
raven_wrapper
├── raven_soc
│   ├── picorv32 (CPU)
│   ├── raven_spi
│   └── memory blocks
├── I/O pads
└── power management
```

### Specifications
- **Technology**: Nangate 45nm (demonstration)
- **Core Voltage**: 1.0V
- **Clock Frequency**: 50MHz target
- **Area**: ~1mm² die
- **Gate Count**: ~100K cells

---

## Reports and Outputs

### Generated Reports (in `icc2/reports/`)

#### Floorplan Reports:
- [`init_dp/check_design.pre_floorplan`](pd/icc2/reports/init_dp/check_design.pre_floorplan): Pre-floorplan checks
- `place_io/floorplan_utilization.rpt`: Area utilization
- `create_power/power_grid.ir`: IR drop analysis

**Pre-Floorplan Check Sample**:
```plaintext
****************************************
 Report : check_design 
 Options: { dp_pre_floorplan }
Design : raven_wrapper
Version: U-2022.12-SP3
Date   : Mon Dec 29 15:13:22 2025
****************************************
```

#### Placement Reports:
- [`placement/report_placement.rpt`](pd/icc2/reports/placement/report_placement.rpt): Placement quality metrics
- `pre_timing/timing_estimation/pre_timing.rpt`: Estimated timing

**Placement Report Sample**:
```plaintext
****************************************
Report : report_placement
Design : raven_wrapper
Version: U-2022.12-SP3
Date   : Mon Dec 29 15:22:00 2025
****************************************
  ==================
  Note: Including violations of fixed cells or between fixed pairs of cells.
```

#### CTS Reports:
- `clock_trunk_planning/cts_qor.rpt`: CTS quality
- `clock_trunk_planning/cts_skew.rpt`: Clock skew analysis

#### Routing Reports:
- `shaping/route_qor.rpt`: Routing quality
- `shaping/drc.rpt`: Design rule checks

#### Signoff Reports:

- [`prime_time_setup_timing.rpt`](Task_5/vsdRiscvScl180/pd/icc2/reports/prime_time_setup_timing.rpt): Final setup timing
- [`prime_time_hold_timing.rpt`](Task_5/vsdRiscvScl180/pd/icc2/reports/prime_time_hold_timing.rpt): Final hold timing
- [`prime_time_constraint.rpt`](Task_5/vsdRiscvScl180/pd/icc2/reports/prime_time_constraint.rpt): Constraint coverage

**Setup Timing Report Sample**:
```plaintext
****************************************
Report : timing
	-path_type full
	-delay_type max
	-input_pins
	-nets
	-max_paths 1
Design : raven_wrapper
Version: U-2022.12-SP3
Date   : Thu Dec 25 17:55:53 2025
****************************************

  Startpoint: _20734_ (rising edge-triggered flip-flop clocked by ext_clk)
  Endpoint: _19970_ (rising clock gating-check end-point clocked by ext_clk')
  Path Group: **clock_gating_default**
  Path Type: max
```

### Output Files (in `icc2/outputs/`)

- [`raven_post_route_net.v`](Task_5/vsdRiscvScl180/pd/icc2/outputs/raven_post_route_net.v): Routed netlist
- [`final.spef.spef_scenario`](Task_5/vsdRiscvScl180/pd/icc2/outputs/final.spef.spef_scenario): Parasitic extraction files
- [`final.spef.temp1_25.spef`](Task_5/vsdRiscvScl180/pd/icc2/outputs/final.spef.temp1_25.spef): Temperature-specific SPEF
- [`preferred_macro_locations.tcl`](Task_5/vsdRiscvScl180/pd/icc2/outputs/preferred_macro_locations.tcl): Macro placement constraints
- [`preferred_port_locations.tcl`](Task_5/vsdRiscvScl180/pd/icc2/outputs/preferred_port_locations.tcl): I/O placement constraints
- [`raven_wrapper.floorplan.def`](Task_5/vsdRiscvScl180/pd/icc2/raven_wrapper.floorplan.def): Floorplan DEF file

**I/O Pin Locations Sample**:
```tcl
START PHYSICAL PIN CONSTRAINTS;
    {pins gpio[15]} {reference raven_wrapper} {layers metal2} {sides 4} {offset 1794.2200};
    {pins gpio[14]} {reference raven_wrapper} {layers metal2} {sides 4} {offset 769.3600};
    {pins gpio[13]} {reference raven_wrapper} {layers metal2} {sides 4} {offset 1281.6000};
    {pins gpio[12]} {reference raven_wrapper} {layers metal2} {sides 4} {offset 1793.8400};
```

---

## VSD Caravel Adaptation

### Required Modifications
To adapt this flow for VSD Caravel SoC:

1. **Replace Netlist**:
   ```tcl
   # Change from:
   read_verilog -top raven_wrapper raven_wrapper.synth.v
   # To:
   read_verilog -top vsdcaravel vsdcaravel_synthesis.v
   ```

2. **Update Libraries**:
   - Replace Nangate 45nm with SCL180 libraries
   - Update LEF files for SCL180 standard cells
   - Modify technology file for 4M1L stack

3. **Adjust Constraints**:
   - Update SDC file for VSD Caravel timing
   - Modify floorplan dimensions for SCL180
   - Adjust power specifications (1.8V core, 3.3V I/O)

4. **Technology Migration**:
   ```tcl
   set TECH_FILE "SCL_4LM.tf"  # SCL180 tech file
   set REF_LEFS [list scl18fs120_std.lef tsl18cio250_4lm.lef]
   ```

### Key Differences
| Aspect | Raven Demo | VSD Caravel Target |
|--------|------------|-------------------|
| Technology | 45nm | 180nm |
| Voltage | 1.0V | 1.8V core, 3.3V I/O |
| CPU | PicoRV32 | VexRiscv |
| Memory | 32KB | 4KB + SPI flash |
| I/O | Basic | 38 GPIO + management |
| Complexity | Simple | Full SoC |

---

## Troubleshooting

### Common Issues

#### 1. Library Loading Errors
**Symptom**: "Cannot find reference library"
**Solution**:
```bash
# Verify file paths
ls -la *.lef *.lib
# Check TCL variable
echo $REF_LEFS
```

#### 2. Design Import Failures
**Symptom**: "Cannot read Verilog file"
**Solution**:
```tcl
# Check file existence
file exists raven_wrapper.synth.v
# Verify top module name
read_verilog -top raven_wrapper raven_wrapper.synth.v
```

#### 3. Timing Violations
**Symptom**: Negative slack in reports
**Solution**:
- Review SDC constraints
- Check clock definitions
- Optimize placement density

#### 4. Congestion Issues
**Symptom**: High routing congestion
**Solution**:
- Increase core utilization
- Add routing blockages
- Use higher metal layers

### Debug Commands
```tcl
# Check design status
check_design

# Report timing summary
report_timing -delay_type max -nworst 10

# Analyze congestion
report_congestion -rerun_global_router

# Check power connections
report_power_domains
```

---

## References

### Documentation
- **ICC2 Workshop**: [https://github.com/kunalg123/icc2_workshop_collaterals](https://github.com/kunalg123/icc2_workshop_collaterals)
- **IC Compiler II User Guide**: Synopsys documentation
- **VSD Caravel Datasheet**: SoC architecture reference
- **Workshop Collaterals**: [`pd/icc2_workshop_collaterals/`](Task_5/vsdRiscvScl180/pd/icc2_workshop_collaterals/)

### Related Tasks
- **Task 3**: Synthesis outputs (vsdcaravel_synthesis.v)
- **Task 4**: POR-free netlist validation
- **vsdRiscvScl180_Final**: Tapeout-ready design

### Scripts and Flows
- [`floorplan.tcl`](pd/icc2/tcl/floorplan.tcl): Main floorplan script
- [`placement.tcl`](pd/icc2/tcl/placement.tcl): Placement automation
- [`cts.tcl`](pd/icc2/tcl/cts.tcl): Clock tree synthesis
- [`route.tcl`](pd/icc2/tcl/route.tcl): Routing script
- ICC2 command logs: Execution history
- Session files (.svf): Design state recovery

### Tools and Versions
- **ICC2**: U-2022.12-SP3
- **Library**: Nangate 45nm Open Cell Library
- **Technology**: FreePDK45 (demonstration)

---

## Next Steps for VSD Caravel

1. **Library Migration**: Obtain SCL180 PDK and libraries
2. **Netlist Integration**: Use vsdcaravel_synthesis.v from Task 3
3. **Constraint Development**: Create SDC for VSD Caravel timing
4. **Floorplan Adaptation**: Adjust for SCL180 die size and I/O count
5. **Full PD Run**: Execute complete flow to GDSII
6. **Signoff Validation**: DRC/LVS/antenna checks

---

*This Task 5 establishes the physical design methodology and environment for the VSD Caravel RISC-V SoC tapeout. The ICC2 workshop provides a proven flow that can be directly adapted for the target SCL180 technology and design requirements.*
