
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Spartan6LEDTest -dir "C:/Users/ss444/Documents/FPGA/Spartan6LEDTest/planAhead_run_3" -part xa6slx4csg225-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LED_Test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {LED_Test.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top LED_Test $srcset
add_files [list {LED_Test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xa6slx4csg225-3
