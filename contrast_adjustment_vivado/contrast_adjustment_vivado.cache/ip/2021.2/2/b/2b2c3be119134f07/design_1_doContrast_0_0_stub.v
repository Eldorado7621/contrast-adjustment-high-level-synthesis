// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar  7 15:21:04 2022
// Host        : sam-HP-Pavilion-Laptop-15-eg0xxx running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_doContrast_0_0_stub.v
// Design      : design_1_doContrast_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "doContrast,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_local_block, s_axi_ctrl_bus_AWADDR, 
  s_axi_ctrl_bus_AWVALID, s_axi_ctrl_bus_AWREADY, s_axi_ctrl_bus_WDATA, 
  s_axi_ctrl_bus_WSTRB, s_axi_ctrl_bus_WVALID, s_axi_ctrl_bus_WREADY, 
  s_axi_ctrl_bus_BRESP, s_axi_ctrl_bus_BVALID, s_axi_ctrl_bus_BREADY, 
  s_axi_ctrl_bus_ARADDR, s_axi_ctrl_bus_ARVALID, s_axi_ctrl_bus_ARREADY, 
  s_axi_ctrl_bus_RDATA, s_axi_ctrl_bus_RRESP, s_axi_ctrl_bus_RVALID, 
  s_axi_ctrl_bus_RREADY, ap_clk, ap_rst_n, interrupt, inStream_TVALID, inStream_TREADY, 
  inStream_TDATA, inStream_TDEST, inStream_TKEEP, inStream_TSTRB, inStream_TUSER, 
  inStream_TLAST, inStream_TID, outStream_TVALID, outStream_TREADY, outStream_TDATA, 
  outStream_TDEST, outStream_TKEEP, outStream_TSTRB, outStream_TUSER, outStream_TLAST, 
  outStream_TID)
/* synthesis syn_black_box black_box_pad_pin="ap_local_block,s_axi_ctrl_bus_AWADDR[4:0],s_axi_ctrl_bus_AWVALID,s_axi_ctrl_bus_AWREADY,s_axi_ctrl_bus_WDATA[31:0],s_axi_ctrl_bus_WSTRB[3:0],s_axi_ctrl_bus_WVALID,s_axi_ctrl_bus_WREADY,s_axi_ctrl_bus_BRESP[1:0],s_axi_ctrl_bus_BVALID,s_axi_ctrl_bus_BREADY,s_axi_ctrl_bus_ARADDR[4:0],s_axi_ctrl_bus_ARVALID,s_axi_ctrl_bus_ARREADY,s_axi_ctrl_bus_RDATA[31:0],s_axi_ctrl_bus_RRESP[1:0],s_axi_ctrl_bus_RVALID,s_axi_ctrl_bus_RREADY,ap_clk,ap_rst_n,interrupt,inStream_TVALID,inStream_TREADY,inStream_TDATA[7:0],inStream_TDEST[5:0],inStream_TKEEP[0:0],inStream_TSTRB[0:0],inStream_TUSER[1:0],inStream_TLAST[0:0],inStream_TID[4:0],outStream_TVALID,outStream_TREADY,outStream_TDATA[7:0],outStream_TDEST[5:0],outStream_TKEEP[0:0],outStream_TSTRB[0:0],outStream_TUSER[1:0],outStream_TLAST[0:0],outStream_TID[4:0]" */;
  output ap_local_block;
  input [4:0]s_axi_ctrl_bus_AWADDR;
  input s_axi_ctrl_bus_AWVALID;
  output s_axi_ctrl_bus_AWREADY;
  input [31:0]s_axi_ctrl_bus_WDATA;
  input [3:0]s_axi_ctrl_bus_WSTRB;
  input s_axi_ctrl_bus_WVALID;
  output s_axi_ctrl_bus_WREADY;
  output [1:0]s_axi_ctrl_bus_BRESP;
  output s_axi_ctrl_bus_BVALID;
  input s_axi_ctrl_bus_BREADY;
  input [4:0]s_axi_ctrl_bus_ARADDR;
  input s_axi_ctrl_bus_ARVALID;
  output s_axi_ctrl_bus_ARREADY;
  output [31:0]s_axi_ctrl_bus_RDATA;
  output [1:0]s_axi_ctrl_bus_RRESP;
  output s_axi_ctrl_bus_RVALID;
  input s_axi_ctrl_bus_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input inStream_TVALID;
  output inStream_TREADY;
  input [7:0]inStream_TDATA;
  input [5:0]inStream_TDEST;
  input [0:0]inStream_TKEEP;
  input [0:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  output outStream_TVALID;
  input outStream_TREADY;
  output [7:0]outStream_TDATA;
  output [5:0]outStream_TDEST;
  output [0:0]outStream_TKEEP;
  output [0:0]outStream_TSTRB;
  output [1:0]outStream_TUSER;
  output [0:0]outStream_TLAST;
  output [4:0]outStream_TID;
endmodule
