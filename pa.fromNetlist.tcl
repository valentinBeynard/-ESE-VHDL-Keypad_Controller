
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Keyboard_controller -dir "E:/-ESE-VHDL-Keypad_Controller/planAhead_run_5" -part xc3s200ft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/-ESE-VHDL-Keypad_Controller/keypad_controler.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/-ESE-VHDL-Keypad_Controller} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "keypad_controler.ucf" [current_fileset -constrset]
add_files [list {keypad_controler.ucf}] -fileset [get_property constrset [current_run]]
link_design
