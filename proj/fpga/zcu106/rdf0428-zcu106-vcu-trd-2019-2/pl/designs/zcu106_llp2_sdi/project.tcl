# global variables
set ::platform "zcu106"
set ::silicon "e"

# local variables
set design_nm "${::platform}_llp2_sdi"
set project_dir "build/$design_nm"
set ip_dir "srcs/ip"
set constrs_dir "constrs"
set scripts_dir "designs/$design_nm"

# set variable names
set part "xczu7ev-ffvc1156-2-${::silicon}"
puts "INFO: Target part selected: '$part'"

# set up project
create_project $design_nm $project_dir -part $part -force
set board_lat [ get_board_parts -latest_file_version  {*zcu106*} ]
set_property board_part $board_lat [current_project]

# set up IP repo
set_property ip_repo_paths $ip_dir [current_fileset]
update_ip_catalog -rebuild

# set up bd design
create_bd_design bd
add_files -norecurse ./srcs/hdl/compact_gt_ctrl.v
add_files -norecurse ./srcs/hdl/${design_nm}_wrapper.v
add_files -norecurse ./srcs/hdl/zugth_uhdsdi_demo_ddr.v
source $scripts_dir/bd.tcl

# add hdl sources to project
make_wrapper -files [get_files ./$project_dir/$design_nm.srcs/sources_1/bd/bd/bd.bd] -top
add_files -norecurse ./srcs/hdl/${design_nm}_wrapper.v
set_property top ${design_nm}_wrapper [current_fileset]
add_files -fileset constrs_1 -norecurse $constrs_dir/vcu_sdirxtx_plddr_place.xdc
add_files -fileset constrs_1 -norecurse $constrs_dir/vcu_sdirxtx_plddr_timing.xdc
add_files -fileset constrs_1 -norecurse $constrs_dir/sdi_interclk.xdc
set_property used_in_synthesis false [get_files  sdi_interclk.xdc]

set_property strategy Performance_RefinePlacement [get_runs impl_1]       

validate_bd_design
update_compile_order -fileset sources_1
regenerate_bd_layout
set_msg_config -suppress -id {BD 41-1265}
set_msg_config -suppress -id {Synth 8-5543}

import_files
save_bd_design

