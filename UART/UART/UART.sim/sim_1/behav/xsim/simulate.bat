@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Mar 21 02:31:05 -0400 2022
REM SW Build 2644227 on Wed Sep  4 09:45:24 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim wrapper_behav -key {Behavioral:sim_1:Functional:wrapper} -tclbatch wrapper.tcl -view C:/Users/sixpe/Documents/EE316P4/UART/UART/uart_user_behav.wcfg -log simulate.log"
call xsim  wrapper_behav -key {Behavioral:sim_1:Functional:wrapper} -tclbatch wrapper.tcl -view C:/Users/sixpe/Documents/EE316P4/UART/UART/uart_user_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
