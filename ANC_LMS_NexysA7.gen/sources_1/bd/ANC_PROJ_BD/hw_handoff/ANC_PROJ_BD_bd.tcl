
################################################################
# This is a generated script based on design: ANC_PROJ_BD
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ANC_PROJ_BD_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# pwm_modulator_wrap, i2s_reciever_config_wrap

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ANC_PROJ_BD

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_0 "MIC SEL = 0
Microphone active on '0'" [get_bd_designs $design_name]

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: i2s_reciever
proc create_hier_cell_i2s_reciever { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_i2s_reciever() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_aud


  # Create pins
  create_bd_pin -dir I -type clk CLK100MHZ
  create_bd_pin -dir O JD2
  create_bd_pin -dir I JD3
  create_bd_pin -dir O JD4
  create_bd_pin -dir I -type rst S00_ARESETN
  create_bd_pin -dir I -type rst aud_mrst

  # Create instance: i2s_receiver_0, and set properties
  set i2s_receiver_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:i2s_receiver:1.0 i2s_receiver_0 ]
  set_property -dict [ list \
   CONFIG.C_32BIT_LR {1} \
 ] $i2s_receiver_0

  # Create instance: i2s_reciever_config_0, and set properties
  set block_name i2s_reciever_config_wrap
  set block_cell_name i2s_reciever_config_0
  if { [catch {set i2s_reciever_config_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2s_reciever_config_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: i2s_reciever_config_0_axi_periph, and set properties
  set i2s_reciever_config_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 i2s_reciever_config_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $i2s_reciever_config_0_axi_periph

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S01_AXI1] [get_bd_intf_pins i2s_reciever_config_0_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net i2s_receiver_0_m_axis_aud [get_bd_intf_pins m_axis_aud] [get_bd_intf_pins i2s_receiver_0/m_axis_aud]
  connect_bd_intf_net -intf_net i2s_reciever_config_0_axi_periph_M00_AXI [get_bd_intf_pins i2s_receiver_0/s_axi_ctrl] [get_bd_intf_pins i2s_reciever_config_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net i2s_reciever_config_0_s_axi_ctrl [get_bd_intf_pins i2s_reciever_config_0/s_axi_ctrl] [get_bd_intf_pins i2s_reciever_config_0_axi_periph/S00_AXI]

  # Create port connections
  connect_bd_net -net JD3_1 [get_bd_pins JD3] [get_bd_pins i2s_receiver_0/sdata_0_in]
  connect_bd_net -net i2s_receiver_0_lrclk_out [get_bd_pins JD2] [get_bd_pins i2s_receiver_0/lrclk_out]
  connect_bd_net -net i2s_receiver_0_sclk_out [get_bd_pins JD4] [get_bd_pins i2s_receiver_0/sclk_out]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins S00_ARESETN] [get_bd_pins i2s_receiver_0/m_axis_aud_aresetn] [get_bd_pins i2s_receiver_0/s_axi_ctrl_aresetn] [get_bd_pins i2s_reciever_config_0/s_axi_ctrl_aresetn] [get_bd_pins i2s_reciever_config_0_axi_periph/ARESETN] [get_bd_pins i2s_reciever_config_0_axi_periph/M00_ARESETN] [get_bd_pins i2s_reciever_config_0_axi_periph/S00_ARESETN] [get_bd_pins i2s_reciever_config_0_axi_periph/S01_ARESETN]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins aud_mrst] [get_bd_pins i2s_receiver_0/aud_mrst]
  connect_bd_net -net sys_clock_1 [get_bd_pins CLK100MHZ] [get_bd_pins i2s_receiver_0/aud_mclk] [get_bd_pins i2s_receiver_0/m_axis_aud_aclk] [get_bd_pins i2s_receiver_0/s_axi_ctrl_aclk] [get_bd_pins i2s_reciever_config_0/s_axi_ctrl_aclk] [get_bd_pins i2s_reciever_config_0_axi_periph/ACLK] [get_bd_pins i2s_reciever_config_0_axi_periph/M00_ACLK] [get_bd_pins i2s_reciever_config_0_axi_periph/S00_ACLK] [get_bd_pins i2s_reciever_config_0_axi_periph/S01_ACLK]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CLK100MHZ [ create_bd_port -dir I -type clk -freq_hz 100000000 CLK100MHZ ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {100MHZ_INPUT_CLK} \
   CONFIG.PHASE {0.0} \
 ] $CLK100MHZ
  set CPU_RESETN [ create_bd_port -dir I -type rst CPU_RESETN ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $CPU_RESETN
  set JD1 [ create_bd_port -dir O -from 0 -to 0 JD1 ]
  set JD2 [ create_bd_port -dir O JD2 ]
  set JD3 [ create_bd_port -dir I -type data JD3 ]
  set JD4 [ create_bd_port -dir O -type clk JD4 ]
  set JD10 [ create_bd_port -dir O JD10 ]
  set LED0 [ create_bd_port -dir O LED0 ]

  # Create instance: i2s_reciever
  create_hier_cell_i2s_reciever [current_bd_instance .] i2s_reciever

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0 ]

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_0

  # Create instance: pwm_modulator_wrap_0, and set properties
  set block_name pwm_modulator_wrap
  set block_cell_name pwm_modulator_wrap_0
  if { [catch {set pwm_modulator_wrap_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pwm_modulator_wrap_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net i2s_receiver_0_m_axis_aud [get_bd_intf_pins i2s_reciever/m_axis_aud] [get_bd_intf_pins pwm_modulator_wrap_0/m_axis_aud]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets i2s_receiver_0_m_axis_aud]
  connect_bd_intf_net -intf_net jtag_axi_0_M_AXI [get_bd_intf_pins i2s_reciever/S01_AXI1] [get_bd_intf_pins jtag_axi_0/M_AXI]

  # Create port connections
  connect_bd_net -net CLK100MHZ [get_bd_ports CLK100MHZ] [get_bd_pins i2s_reciever/CLK100MHZ] [get_bd_pins jtag_axi_0/aclk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins pwm_modulator_wrap_0/m_axis_aud_aclk]
  connect_bd_net -net JD3_1 [get_bd_ports JD3] [get_bd_pins i2s_reciever/JD3]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets JD3_1]
  connect_bd_net -net i2s_reciever_JD2 [get_bd_ports JD2] [get_bd_pins i2s_reciever/JD2]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets i2s_reciever_JD2]
  connect_bd_net -net i2s_reciever_JD4 [get_bd_ports JD4] [get_bd_pins i2s_reciever/JD4]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets i2s_reciever_JD4]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins i2s_reciever/S00_ARESETN] [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins pwm_modulator_wrap_0/m_axis_aud_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins i2s_reciever/aud_mrst] [get_bd_pins proc_sys_reset_0/peripheral_reset]
  connect_bd_net -net pwm_modulator_wrap_0_pwm_out [get_bd_ports JD10] [get_bd_pins pwm_modulator_wrap_0/pwm_out]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets pwm_modulator_wrap_0_pwm_out]
  connect_bd_net -net reset_1 [get_bd_ports CPU_RESETN] [get_bd_ports LED0] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net xlconstant_0_dout [get_bd_ports JD1] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs i2s_reciever/i2s_receiver_0/s_axi_ctrl/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces i2s_reciever/i2s_reciever_config_0/s_axi_ctrl] [get_bd_addr_segs i2s_reciever/i2s_receiver_0/s_axi_ctrl/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


