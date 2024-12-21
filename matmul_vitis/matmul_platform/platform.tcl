# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Workspace\2024-2\soc\final_project\matmul_vitis\matmul_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Workspace\2024-2\soc\final_project\matmul_vitis\matmul_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {matmul_platform}\
-hw {D:\Workspace\2024-2\soc\final_project\matmul_vivado\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/Workspace/2024-2/soc/final_project/matmul_vitis}

platform write
platform generate -domains 
platform active {matmul_platform}
platform generate
platform clean
platform generate
platform clean
