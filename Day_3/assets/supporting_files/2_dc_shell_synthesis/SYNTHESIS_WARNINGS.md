# Synthesis Warnings Analysis

## Design: vsdcaravel
## Tool: DC_TOPO T-2022.03-SP5

### Summary
All warnings categorized as ACCEPTABLE for Task 2 requirements.

---

### 1. Unresolved References (3 instances)

**Modules**: `pc3d01_wrapper`, `pc3b03ed_wrapper`

**Status**: ✅ EXPECTED

**Explanation**: I/O pad wrappers preserved as black boxes per mixed-signal design methodology. These structural cells are technology-specific and integrated during physical design, not logic synthesis.

**Resolution for GLS**: Pad wrapper Verilog files included in VCS compilation (same approach as RTL simulation).

---

### 2. Timing Loops (20 arcs disabled)

**Locations**: 
- PLL ring oscillator (`chip_core/pll/ringosc/*`)
- Clock dividers (`chip_core/clock_ctrl/divider/*`)
- Housekeeping SPI logic

**Status**: ✅ HANDLED BY TOOL

**Explanation**: Ring oscillator contains intentional feedback for self-oscillation. DC_TOPO automatically disabled timing arcs to prevent infinite loops during STA. This does not affect functionality.

**Design Note**: PLL timing verified separately via SPICE simulation in analog design flow. Clock divider feedback is part of normal even/odd division logic.

---

### 3. Power Analysis Warnings

**Warnings**:
- No defined clock in power analysis context
- Unannotated inputs/outputs/black boxes

**Status**: ℹ️ INFORMATIONAL

**Explanation**: Static power analysis without simulation vectors produces conservative estimates. Warnings indicate default toggle rates used.

**Impact**: Power numbers are approximate. Accurate power requires post-layout simulation with real activity vectors.

---

## Conclusion

**Synthesis Quality**: ✅ ACCEPTABLE for Task 2

- Netlist is functionally complete
- I/O pads correctly black-boxed
- Timing loops handled appropriately
- Power estimates conservative but reasonable

**Next Phase**: Proceed to VCS Gate-Level Simulation with synthesized netlist.

---
**Engineer**: sshekhar@nanodc.iitgn.ac.in  
**Date**: December 13, 2025
