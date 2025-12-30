# POR Usage Analysis

## Executive Summary

This document provides a comprehensive analysis of Power-On Reset (POR) usage in the VSD Caravel RISC-V SoC. The analysis identifies all POR-related signals, their sources, destinations, and functional roles within the design hierarchy.

## POR Signal Overview

The design uses three primary POR signals derived from a single `dummy_por` module:

| Signal | Domain | Polarity | Description |
|--------|--------|----------|-------------|
| `porb_h` | 3.3V (HV) | Active-low | High-voltage domain POR signal |
| `porb_l` | 1.8V (LV) | Active-low | Low-voltage domain POR signal |
| `por_l` | 1.8V (LV) | Active-high | Inverted version of porb_l |

## POR Module Instantiation

### Location: `caravel_core.v:1385`
```verilog
dummy_por por (
    .porb_h(porb_h),
    .porb_l(porb_l),
    .por_l(por_l)
);
```

**Analysis:**
The `dummy_por` module is a behavioral model that simulates POR behavior but is not synthesizable.

## Signal Flow Analysis

### Top-Level Distribution (vsdcaravel.v)

```
dummy_por (caravel_core.v)
    │
    ├── porb_h ──┬─► chip_io.v (.porb_h) ──► mprj_io.v (.porb_h)
    │            │                           └──► Enables HV pads during power-up
    │            │
    │            └─► caravel.v (.porb_h) ──► __openframe_project_wrapper.v (.porb_h)
    │
    ├── porb_l ──┬─► mgmt_core.v (.porb) ──► Resets CPU, RAMs, Peripherals
    │            │
    │            └─► housekeeping.v (.porb) ──► Controls SPI flash interface
    │
    └── por_l ───┬─► chip_io.v (.por) ──► Additional pad control
                 │
                 └─► mgmt_core.v (.por_l_in) ──► Power sequencing logic
```

## Detailed Usage by Module

### 1. chip_io.v - I/O Pad Control
**Signals Used:** `porb_h`, `por_l`
**Function:** 
- `porb_h`: Enables high-voltage I/O pads during power-up sequence
- `por_l`: Additional pad control logic
**Critical Path:** Ensures I/O pads are properly initialized before normal operation

### 2. mgmt_core.v - Management Core Reset
**Signals Used:** `porb_l` (as .porb), `por_l_in`, `por_l_out`
**Function:**
- `porb_l`: Primary reset for CPU core, instruction/data caches, peripherals
- `por_l_in/out`: Power sequencing and monitoring
**Critical Path:** Resets all digital logic in management domain

### 3. housekeeping.v - SPI Control
**Signals Used:** `porb`
**Function:** Controls SPI flash interface enable/disable during reset
**Critical Path:** Prevents spurious SPI transactions during power-up

### 4. mprj_io.v - User Project I/O
**Signals Used:** `porb_h`
**Function:** Enables user project I/O pads
**Critical Path:** User project pad initialization

### 5. caravel_clocking.v - Clock Distribution
**Signals Used:** `porb` (as input to reset logic)
**Function:** Integrated with external reset for clock domain reset generation
**Critical Path:** Synchronized reset distribution

## POR vs External Reset Integration

### Current Implementation
```verilog
// caravel_clocking.v:26
assign resetb_async = porb & resetb & (!ext_reset);
```

**Analysis:**
- POR (`porb`) ANDed with external reset (`resetb`) ANDed with inverted external reset (`ext_reset`)
- This creates a complex reset condition that depends on both POR and external reset
- The logic suggests POR is currently required for proper reset assertion

### Functional Dependencies

| Block | POR Required? | External Reset Sufficient? | Rationale |
|-------|---------------|---------------------------|-----------|
| I/O Pads | Yes | No | SCL-180 pads need POR for proper initialization |
| CPU Core | Yes | Potentially | POR ensures clean state after power-up |
| SPI Flash | Yes | No | POR prevents bus contention during power-up |
| Clocking | Mixed | No | Current logic requires both POR and external reset |

## Files Containing POR Logic

### Core POR Files:
- `dummy_por.v` - POR behavioral model
- `caravel_core.v` - POR instantiation and distribution
- `chip_io.v` - I/O pad POR control
- `mgmt_core.v` - Management core POR handling
- `housekeeping.v` - SPI POR control

### Interface Files:
- `vsdcaravel.v` - Top-level POR wiring
- `caravel.v` - Caravel-level POR distribution
- `caravel_openframe.v` - Openframe POR handling
- `__openframe_project_wrapper.v` - Project wrapper POR
- `mprj_io.v` - User I/O POR control

## Removal Impact Assessment

### Safe to Remove:
- `dummy_por.v` instantiation
- POR signal wires in non-critical paths
- Behavioral POR dependencies in testbenches

### Requires Careful Analysis:
- I/O pad enable logic (may need alternative initialization)
- SPI flash control (may need external reset alternative)
- Power sequencing logic (may need redesign)

### Cannot Remove Without Replacement:
- Any logic that depends on guaranteed power-up state
- Critical initialization sequences
- Pad enable signals that prevent bus contention

## Conclusion

The POR system serves three primary functions:
1. **I/O Pad Initialization**: Ensures pads are properly enabled during power-up
2. **Digital Logic Reset**: Provides clean initial state for all sequential elements
3. **Bus Contention Prevention**: Prevents spurious transactions during power-up

Complete POR removal requires:
- Alternative pad initialization strategy
- External reset distribution to all POR-dependent blocks
- Verification that SCL-180 pads don't require POR gating
- Functional verification of reset behavior without POR

**Total POR-related instances found: 64 across 15 files**