transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Isel/1Semestre/LSD/AV/AV_LAB3/SEM1.LSD.LAB3.SQUARE-ADDER/REG/FFD.vhd}
vcom -93 -work work {C:/Isel/1Semestre/LSD/AV/AV_LAB3/SEM1.LSD.LAB3.SQUARE-ADDER/ASM_CHART/asm_chart_rom.vhd}
vcom -93 -work work {C:/Isel/1Semestre/LSD/AV/AV_LAB3/SEM1.LSD.LAB3.SQUARE-ADDER/ASM_CHART/asm_chart.vhd}

