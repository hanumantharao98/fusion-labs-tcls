##########################################################################################
# Lab 1 - Reading RTL
# Script: run.tcl
##########################################################################################

echo "hello world"

source -echo ./setup.tcl

create_lib -technology $TECH_FILE -ref_libs $REFERENCE_LIBRARY risc_core.dlib

analyze -format verilog [glob risc_rtl/*.v]

elaborate risc_core
set_top_module risc_core

# Fix missing SRAM issue
# Method #1
set_ref_libs -add ../ref/CLIBs/saed32_sram_lp.ndm
link_block -force

# Method #2
# Correct the setup.tcl file:
# Add the missing SRAM reference library to the REFERENCE_LIBRARY list
# (or alternatively, use the file .solutions/setup.tcl)
close_lib
source -echo ./setup.tcl
create_lib -technology $TECH_FILE -ref_libs $REFERENCE_LIBRARY risc_core.dlib

analyze -format verilog [glob risc_rtl/*.v]
elaborate risc_core
set_top_module risc_core


report_ref_libs

close_blocks
close_blocks -force

set_current_mismatch_config auto_fix
get_current_mismatch_config

analyze -vcs "-f risc_core.vcs"
elaborate risc_core
set_top_module risc_core

report_design_mismatch -verbose

get_blocks
get_attribute [get_blocks alu.design] boundary

# Apply a new boundary to the alu black box
set_attribute [get_blocks alu] boundary {{0 0} {0 10} {120 160} {120 0}}


ls -l

rename_block -to_block risc_core/read
save_lib


get_blocks risc_core/read
get_blocks risc_core/read.design
get_blocks risc_core.dlib:risc_core/read
get_blocks risc_core.dlib:risc_core/read.design




exit
