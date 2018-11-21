connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203A3CFF3A" && level==0} -index 0
fpga -file F:/Project/FPGA/HDMI_AC701/ac701_project_dual/adv7511_ac701.sdk/system_top_hw_platform_1/download.bit
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT1 210203A3CFF3A"} -index 0
loadhw F:/Project/FPGA/HDMI_AC701/ac701_project_dual/adv7511_ac701.sdk/system_top_hw_platform_1/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT1 210203A3CFF3A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT1 210203A3CFF3A"} -index 0
dow F:/Project/FPGA/HDMI_AC701/ac701_project_dual/adv7511_ac701.sdk/mutex_mb0/Debug/mutex_mb0.elf
targets -set -nocase -filter {name =~ "microblaze*#1" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT1 210203A3CFF3A"} -index 0
dow F:/Project/FPGA/HDMI_AC701/ac701_project_dual/adv7511_ac701.sdk/mutex_mb1/Debug/mutex_mb1.elf
bpadd -addr &main
