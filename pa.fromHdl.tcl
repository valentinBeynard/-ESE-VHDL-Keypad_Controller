
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Keyboard_controller -dir "C:/Users/valentin.beynard/Documents/ESE_VHDL/Keyboard_controller/planAhead_run_2" -part xc3s200ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "debounce_fsm.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {debounce_fsm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clk_divider.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {debounce.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top debounce $srcset
add_files [list {debounce_fsm.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200ft256-4
