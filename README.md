fpga-drive-aximm-pcie
=====================

Example design for FPGA Drive using the AXI Memory Mapped to PCI Express Bridge IP.

## Supported carrier boards

* Zynq-7000 [PicoZed FMC Carrier Card V2](http://zedboard.org/product/picozed-fmc-carrier-card-v2 "PicoZed FMC Carrier Card V2") with [PicoZed 7015/30](http://picozed.org "PicoZed")
  * PCIe edge (use pzfmc-7z015-7z030-1v8-lpc.xdc)
  * LPC connector (use pzfmc-7z015-7z030-1v8.xdc)
* Artix-7 [AC701 Evaluation board](http://www.xilinx.com/products/boards-and-kits/ek-a7-ac701-g.html "AC701 Evaluation board")
  * PCIe edge (use ac701.xdc)
  * HPC connector (use ac701-hpc.xdc)
* Kintex-7 [KC705 Evaluation board](http://www.xilinx.com/products/boards-and-kits/ek-k7-kc705-g.html "KC705 Evaluation board")
  * PCIe edge (use kc705.xdc)
  * LPC connnector (use kc705-lpc.xdc)
  * HPC connnector (use kc705-hpc.xdc)
* Virtex-7 [VC707 Evaluation board](http://www.xilinx.com/products/boards-and-kits/ek-v7-vc707-g.html "VC707 Evaluation board")
  * PCIe edge (use vc707.xdc)
  * HPC connector 1 (use vc707-hpc1.xdc)
  * HPC connector 2 (use vc707-hpc2.xdc)
* Virtex-7 [VC709 Evaluation board](http://www.xilinx.com/products/boards-and-kits/dk-v7-vc709-g.html "VC709 Evaluation board")
  * PCIe edge (use vc709.xdc)
  * HPC connector (use vc709-hpc.xdc)
* Zynq-7000 [ZC706 Evaluation board](http://www.xilinx.com/products/boards-and-kits/ek-z7-zc706-g.html "ZC706 Evaluation board") (LPC only)
  * PCIe edge (use zc706.xdc)
  * LPC connector (use zc706-lpc.xdc)
  * HPC connector (use zc706-hpc.xdc)

## Description

This project demonstrates using the AXI Memory Mapped to PCIe Bridge IP
to interface an FPGA with a PCIe end-point device. The bridge IP is configured
as a PCIe Root Port, using 1 to 4 lanes, Gen2 depending on target hardware.

The bare metal software application reports on the status of the PCIe link and 
performs enumeration of the detected PCIe end-points.

## Requirements

In order to test this design on hardware, you will need the following:

* Vivado 2016.2
* [FPGA Drive](http://fpgadrive.com "FPGA Drive") - for connecting a PCIe SSD
* M.2 PCIe Solid State Drive
* One of the supported carriers listed above

## Board Specific Notes

### VC709

Note that there is no standalone SDK application for the VC709 in this repository. The reason is that the VC709 design
is based on the [AXI Bridge for PCI Express Gen3 Subsystem v2.1](http://www.xilinx.com/support/documentation/ip_documentation/axi_pcie3/v2_0/pg194-axi-bridge-pcie-gen3.pdf "AXI Bridge for PCI Express Gen3 Subsystem v2.1"), for which Xilinx does not presently provide a driver.
If you use the VC709 design from this repository, you must write your own drivers for standalone and Linux use.

### PicoZed

#### Installation of PicoZed board definition files

To use this project on the PicoZed, you must first install the board definition files
for the PicoZed into your Vivado installation.

The following folders contain the board definition files and can be found in this project repository at this location:

https://github.com/fpgadeveloper/fpga-drive-aximm-pcie/tree/master/Vivado/boards/board_files

* `picozed_7015_fmc2`
* `picozed_7030_fmc2`

Copy those folders and their contents into the `C:\Xilinx\Vivado\2016.2\data\boards\board_files` folder (this may
be different on your machine, depending on your Vivado installation directory).

## License

Feel free to modify the code for your specific application.

## Fork and share

If you port this project to another hardware platform, please send me the
code or push it onto GitHub and send me the link so I can post it on my
website. The more people that benefit, the better.

## About the author

I'm an FPGA consultant and I provide FPGA design services to innovative
companies around the world. I believe in sharing knowledge and
I regularly contribute to the open source community.

Jeff Johnson
[FPGA Developer](http://www.fpgadeveloper.com "FPGA Developer")