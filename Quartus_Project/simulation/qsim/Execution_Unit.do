onerror {exit -code 1}
vlib work
vcom -work work Execution_Unit.vho
vcom -work work EX_UNIT_TEST.vwf.vht
vsim -novopt -c -t 1ps -L maxv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Execution_Unit_vhd_vec_tst
vcd file -direction Execution_Unit.msim.vcd
vcd add -internal Execution_Unit_vhd_vec_tst/*
vcd add -internal Execution_Unit_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

