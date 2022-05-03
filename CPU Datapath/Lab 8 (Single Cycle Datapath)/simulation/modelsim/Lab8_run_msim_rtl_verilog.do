transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/Lab8.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/PCID.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/ALU.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/InstructionDecoder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/Mux.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/ProgramCounter.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/ROM.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/Decoder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/Multiplexer.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/Register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/RegisterFile.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/RAM.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/immGen.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 8\ (Single\ Cycle\ Datapath) {C:/intelFPGA_lite/Lab 8 (Single Cycle Datapath)/Lab8_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  Lab8_testbench

add wave *
view structure
view signals
run -all
