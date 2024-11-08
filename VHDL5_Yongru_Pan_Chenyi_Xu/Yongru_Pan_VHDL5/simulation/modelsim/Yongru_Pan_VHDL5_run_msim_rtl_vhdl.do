transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.0/Yongru_Pan_VHDL5/Yongru_Pan_counter.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.0/Yongru_Pan_VHDL5/simulation/modelsim/Yongru_Pan_JKFF.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Yongru_Pan_JKFF_vhd_tst

add wave *
view structure
view signals
run -all
