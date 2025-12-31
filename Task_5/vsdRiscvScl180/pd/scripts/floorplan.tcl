############################################################
# ICC2 Floorplan Script - SCL 180nm (4M1L)
# Optimized for Version: U-2022.12-SP3
############################################################

# -----------------------------
# 1. Path Definitions
# -----------------------------
set DESIGN_NAME "vsdcaravel"
set WORK_DIR    "/home/sshekhar/floorplan/vsdRiscvScl180/Floorplan/work"
set LIB_NAME    "${DESIGN_NAME}_lib"
set REPORTS_DIR "$WORK_DIR/reports"

file mkdir $REPORTS_DIR

# UPDATED: Using the specific 4M1L Tech File found
set TECH_FILE "/home/Synopsys/pdk/SCL_PDK_3/SCLPDK_V3.0_KIT/scl180/digital_pnr_kit/snps/non_rh/4M1L/SCL_4LM.tf"

set REF_LEFS [list \
    "/home/Synopsys/pdk/SCL_PDK_3/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/4M1IL/lef/scl18fs120_std.lef" \
    "/home/Synopsys/pdk/SCL_PDK_3/SCLPDK_V3.0_KIT/scl180/iopad/cio250/4M1L/lef/tsl18cio250_4lm.lef" \
]

set VERILOG_FILE "/home/sshekhar/floorplan/vsdRiscvScl180/synthesis/output/vsdcaravel_synthesis.v"
set SDC_FILE     "/home/sshekhar/floorplan/vsdRiscvScl180/synthesis/output/vsdcaravel_synthesis.sdc"

# -----------------------------
# 2. Library Creation
# -----------------------------
if {[sizeof_collection [get_libs -quiet $LIB_NAME]] > 0} {
    close_lib $LIB_NAME
}
if {[file exists $WORK_DIR/$LIB_NAME]} {
    file delete -force $WORK_DIR/$LIB_NAME
}

# Creating the library using the verified .tf file
create_lib $WORK_DIR/$LIB_NAME \
    -technology $TECH_FILE \
    -ref_libs $REF_LEFS

# -----------------------------
# 3. Design Ingestion
# -----------------------------
read_verilog -top $DESIGN_NAME $VERILOG_FILE
link_block

if {[file exists $SDC_FILE]} {
    read_sdc $SDC_FILE
}

# -----------------------------
# 4. Floorplan Initialization
# -----------------------------
# Die: 3588um x 5188um | Core: 3388um x 4988um
# We use -boundary for exact die size and -core_offset to define the core area
initialize_floorplan \
    -boundary {{0 0} {3588 5188}} \
    -core_offset {100 100 100 100}

create_placement_blockage \
  -name IO_BOTTOM \
  -type hard \
  -boundary {{0 0} {3588 100}}

# Top IO region (along top die edge)
create_placement_blockage \
  -name IO_TOP \
  -type hard \
  -boundary {{0 5088} {3588 5188}}

# Left IO region (along left die edge)
create_placement_blockage \
  -name IO_LEFT \
  -type hard \
  -boundary {{0 100} {100 5088}}

# Right IO region (along right die edge)
create_placement_blockage \
  -name IO_RIGHT \
  -type hard \
  -boundary {{3488 100} {3588 5088}}

# -----------------------------
# 5. Site Defs Fix
# -----------------------------
# Ensure the tool recognizes the SCL site for row creation
set_attribute [get_site_defs] is_default true

# -----------------------------
# 6. Save and Report
# -----------------------------
save_block
report_design -floorplan > $REPORTS_DIR/floorplan_report.txt
report_utilization > $REPORTS_DIR/utilization_report.txt

puts "SUCCESS: Floorplan for $DESIGN_NAME is initialized using 4M1L tech."
