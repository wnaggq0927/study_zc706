# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct H:\test\two\fpga_arm\vitis\zc706_md\platform.tcl
# 
# OR launch xsct and run below command.
# source H:\test\two\fpga_arm\vitis\zc706_md\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zc706_md}\
-hw {H:\test\two\fpga_arm\design_1_wrapper.xsa}\
-out {H:/test/two/fpga_arm/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_echo_server}
platform generate -domains 
platform active {zc706_md}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.6
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {H:/test/two/fpga_arm/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {H:/test/two/fpga_arm/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform generate
platform generate
