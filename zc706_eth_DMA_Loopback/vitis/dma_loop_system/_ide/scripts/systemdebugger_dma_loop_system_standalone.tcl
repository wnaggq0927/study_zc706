# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: F:\study_vivado_ps\zc706_eth_DMA_Loopback\vitis\dma_loop_system\_ide\scripts\systemdebugger_dma_loop_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source F:\study_vivado_ps\zc706_eth_DMA_Loopback\vitis\dma_loop_system\_ide\scripts\systemdebugger_dma_loop_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B7E2" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A1B7E2-23731093-0"}
fpga -file F:/study_vivado_ps/zc706_eth_DMA_Loopback/vitis/dma_loop/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw F:/study_vivado_ps/zc706_eth_DMA_Loopback/vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source F:/study_vivado_ps/zc706_eth_DMA_Loopback/vitis/dma_loop/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow F:/study_vivado_ps/zc706_eth_DMA_Loopback/vitis/dma_loop/Debug/dma_loop.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
