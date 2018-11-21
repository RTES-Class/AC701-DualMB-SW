connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT1 210203A3CFF3A"} -index 0
loadhw F:/Project/FPGA/HDMI_AC701/ac701_project_dual/adv7511_ac701.sdk/system_top_hw_platform_1/system.hdf
