# --- ZC706 HDMI Constraints (User Verified) ---

# 1. 时钟 CLK (Pin P28 -> ADV7511 Pin 79)
set_property PACKAGE_PIN P28 [get_ports hdmi_clk]
set_property IOSTANDARD LVCMOS25 [get_ports hdmi_clk]

# 2. 同步信号
# HSYNC (Pin R22 -> ADV7511 Pin 98)
set_property PACKAGE_PIN R22 [get_ports hdmi_hs]
# VSYNC (Pin U21 -> ADV7511 Pin 2)
set_property PACKAGE_PIN U21 [get_ports hdmi_vs]
# DE (Pin V24 -> ADV7511 Pin 97)
set_property PACKAGE_PIN V24 [get_ports hdmi_de]

set_property IOSTANDARD LVCMOS25 [get_ports hdmi_hs]
set_property IOSTANDARD LVCMOS25 [get_ports hdmi_vs]
set_property IOSTANDARD LVCMOS25 [get_ports hdmi_de]

# 3. 数据信号 Data[23:0]
# 映射说明：
# [7:0]  对应 D4-D11   (通常为 蓝色 Blue)
# [15:8] 对应 D16-D23  (通常为 绿色 Green)
# [23:16]对应 D28-D35  (通常为 红色 Red)

# --- Group 1: D4 - D11 (Data[0] - Data[7]) ---
set_property PACKAGE_PIN U24  [get_ports {hdmi_data[0]}]  ;# D4
set_property PACKAGE_PIN T22  [get_ports {hdmi_data[1]}]  ;# D5
set_property PACKAGE_PIN R23  [get_ports {hdmi_data[2]}]  ;# D6
set_property PACKAGE_PIN AA25 [get_ports {hdmi_data[3]}]  ;# D7
set_property PACKAGE_PIN AE28 [get_ports {hdmi_data[4]}]  ;# D8
set_property PACKAGE_PIN T23  [get_ports {hdmi_data[5]}]  ;# D9
set_property PACKAGE_PIN AB25 [get_ports {hdmi_data[6]}]  ;# D10
set_property PACKAGE_PIN T27  [get_ports {hdmi_data[7]}]  ;# D11

# --- Group 2: D16 - D23 (Data[8] - Data[15]) ---
set_property PACKAGE_PIN AD26 [get_ports {hdmi_data[8]}]  ;# D16
set_property PACKAGE_PIN AB26 [get_ports {hdmi_data[9]}]  ;# D17
set_property PACKAGE_PIN AA28 [get_ports {hdmi_data[10]}] ;# D18
set_property PACKAGE_PIN AC26 [get_ports {hdmi_data[11]}] ;# D19
set_property PACKAGE_PIN AE30 [get_ports {hdmi_data[12]}] ;# D20
set_property PACKAGE_PIN Y25  [get_ports {hdmi_data[13]}] ;# D21
set_property PACKAGE_PIN AA29 [get_ports {hdmi_data[14]}] ;# D22
set_property PACKAGE_PIN AD30 [get_ports {hdmi_data[15]}] ;# D23

# --- Group 3: D28 - D35 (Data[16] - Data[23]) ---
set_property PACKAGE_PIN Y28  [get_ports {hdmi_data[16]}] ;# D28
set_property PACKAGE_PIN AF28 [get_ports {hdmi_data[17]}] ;# D29
set_property PACKAGE_PIN V22  [get_ports {hdmi_data[18]}] ;# D30
set_property PACKAGE_PIN AA27 [get_ports {hdmi_data[19]}] ;# D31
set_property PACKAGE_PIN U22  [get_ports {hdmi_data[20]}] ;# D32
set_property PACKAGE_PIN N28  [get_ports {hdmi_data[21]}] ;# D33
set_property PACKAGE_PIN V21  [get_ports {hdmi_data[22]}] ;# D34
set_property PACKAGE_PIN AC22 [get_ports {hdmi_data[23]}] ;# D35

set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_data[*]}]

