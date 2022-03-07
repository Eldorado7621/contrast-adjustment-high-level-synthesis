############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project doHist
set_top doHist
add_files core.cpp
add_files core.h
open_solution "solution1" -flow_target vivado
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./doHist/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
