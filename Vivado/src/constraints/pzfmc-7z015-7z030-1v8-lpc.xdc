#GPIO LEDs
set_property PACKAGE_PIN G3 [get_ports mmcm_lock]
set_property IOSTANDARD LVCMOS18 [get_ports mmcm_lock]

# PCI Express reset (perst)
set_property PACKAGE_PIN B4 [get_ports perst_n]
set_property IOSTANDARD LVCMOS18 [get_ports perst_n]

# PCI Express reference clock 100MHz
set_property PACKAGE_PIN U5 [get_ports {ref_clk_clk_p[0]}]
set_property PACKAGE_PIN V5 [get_ports {ref_clk_clk_n[0]}]

# MGT locations
set_property PACKAGE_PIN Y6 [get_ports {pcie_7x_mgt_rxn}]
set_property PACKAGE_PIN W6 [get_ports {pcie_7x_mgt_rxp}]
set_property PACKAGE_PIN Y2 [get_ports {pcie_7x_mgt_txn}]
set_property PACKAGE_PIN W2 [get_ports {pcie_7x_mgt_txp}]

