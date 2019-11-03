$BASE_PATH = '../../'
$WORK_PATH = $BASE_PATH + 'ch1-Data Types/tb/work'

$COMPILE_FILE_PATH = $BASE_PATH + 'ch1-Data Types/code/'

vlib $WORK_PATH
vmap work work

vlog -reportprogress 300 -work work {$COMPILE_FILE_PATH + '/*'}
vopt +acc float_number_tb -o float_number_tb_opt

vsim float_number_tb_opt

add wave -position insertpoint sim:/float_number_tb/*

run 1000ns