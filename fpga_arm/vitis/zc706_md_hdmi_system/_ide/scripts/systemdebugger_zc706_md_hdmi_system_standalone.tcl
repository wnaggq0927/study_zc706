# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: H:\test\two\fpga_arm\vitis\zc706_md_hdmi_system\_ide\scripts\systemdebugger_zc706_md_hdmi_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source H:\test\two\fpga_arm\vitis\zc706_md_hdmi_system\_ide\scripts\systemdebugger_zc706_md_hdmi_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B7E2" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A1B7E2-23731093-0"}
fpga -file H:/test/two/fpga_arm/fpga_arm.runs/impl_1/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw H:/test/two/fpga_arm/vitis/zc706_md/export/zc706_md/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source H:/test/two/fpga_arm/vitis/zc706_md_hdmi/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow H:/test/two/fpga_arm/vitis/zc706_md_hdmi/Debug/zc706_md_hdmi.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
