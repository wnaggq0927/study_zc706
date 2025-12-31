# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct F:\study_vivado_ps\zc706_eth_DMA\vitis\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source F:\study_vivado_ps\zc706_eth_DMA\vitis\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {F:\study_vivado_ps\zc706_eth_DMA\design_1_wrapper.xsa}\
-out {F:/study_vivado_ps/zc706_eth_DMA/vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_hello_world}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
bsp setlib -name lwip211 -ver 1.6
bsp setlib -name xilffs -ver 4.6
bsp config api_mode "SOCKET_API"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {design_1_wrapper}
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform write
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate -domains standalone_ps7_cortexa9_0 
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform generate
platform active {design_1_wrapper}
domain active {standalone_ps7_cortexa9_0}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
platform generate -domains 
bsp reload
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA/design_1_wrapper.xsa}
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform generate
platform active {design_1_wrapper}
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
platform clean
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
catch {platform remove design_1_wrapper}
platform clean
platform generate
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
platform generate -domains 
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {F:/study_vivado_ps/zc706_eth_DMA_Loopback/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
