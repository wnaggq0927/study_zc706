# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct F:\zc706\vitis\zc706\platform.tcl
# 
# OR launch xsct and run below command.
# source F:\zc706\vitis\zc706\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zc706} -hw {F:\zc706\zc706.xsa} -out {F:/zc706/vitis}
platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {zc706}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
domain create -name {freertos_domain} -os {freertos} -proc {ps7_cortexa9_0} -arch {32-bit} -display-name {freertos_domain} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
platform generate -domains freertos_domain 
platform config -updatehw {F:/zc706/zc7060.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos_domain}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform generate -domains 
platform config -updatehw {F:/zc706/design_1_wrapper.xsa}
platform clean
platform generate
platform active {zc706}
bsp reload
bsp setlib -name lwip211 -ver 1.6
bsp config phy_link_speed "CONFIG_LINKSPEED1000"
bsp config api_mode "SOCKET_API"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp config phy_link_speed "CONFIG_LINKSPEED_AUTODETECT"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
