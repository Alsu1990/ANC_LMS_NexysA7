proc write {address value} {
    set address [string range $address 2 [expr {[string length $address]-1}]]
    create_hw_axi_txn -quiet -force wr_txn_lite [get_hw_axis hw_axi_1] -address $address -data $value -len 1 -size 32 -type write
    run_hw_axi -quiet wr_txn_lite
}

proc read {address} {
    set address [string range $address 2 [expr {[string length $address]-1}]]
    create_hw_axi_txn -quiet -force rd_txn_lite [get_hw_axis hw_axi_1] -address $address -len 1 -size 32 -type read
    run_hw_axi -quiet rd_txn_lite
    return 0x[get_property data [get_hw_axi_txn rd_txn_lite]]
}