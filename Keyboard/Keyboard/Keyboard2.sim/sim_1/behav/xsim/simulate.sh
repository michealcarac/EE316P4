#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Mar 10 18:54:48 EST 2022
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim Keyboard_wrapper_behav -key {Behavioral:sim_1:Functional:Keyboard_wrapper} -tclbatch Keyboard_wrapper.tcl -protoinst "protoinst_files/Keyboard.protoinst" -log simulate.log"
xsim Keyboard_wrapper_behav -key {Behavioral:sim_1:Functional:Keyboard_wrapper} -tclbatch Keyboard_wrapper.tcl -protoinst "protoinst_files/Keyboard.protoinst" -log simulate.log

