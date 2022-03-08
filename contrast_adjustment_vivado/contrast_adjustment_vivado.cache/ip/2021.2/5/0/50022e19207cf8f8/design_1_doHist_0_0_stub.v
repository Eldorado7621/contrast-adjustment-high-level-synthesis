// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar  7 15:21:38 2022
// Host        : sam-HP-Pavilion-Laptop-15-eg0xxx running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_doHist_0_0_stub.v
// Design      : design_1_doHist_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "doHist,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_local_block, s_axi_ctrl_bus_AWADDR, 
  s_axi_ctrl_bus_AWVALID, s_axi_ctrl_bus_AWREADY, s_axi_ctrl_bus_WDATA, 
  s_axi_ctrl_bus_WSTRB, s_axi_ctrl_bus_WVALID, s_axi_ctrl_bus_WREADY, 
  s_axi_ctrl_bus_BRESP, s_axi_ctrl_bus_BVALID, s_axi_ctrl_bus_BREADY, 
  s_axi_ctrl_bus_ARADDR, s_axi_ctrl_bus_ARVALID, s_axi_ctrl_bus_ARREADY, 
  s_axi_ctrl_bus_RDATA, s_axi_ctrl_bus_RRESP, s_axi_ctrl_bus_RVALID, 
  s_axi_ctrl_bus_RREADY, ap_clk, ap_rst_n, interrupt, inStream_TVALID, inStream_TREADY, 
  inStream_TDATA, inStream_TDEST, inStream_TKEEP, inStream_TSTRB, inStream_TUSER, 
  inStream_TLAST, inStream_TID, histo_Clk_A, histo_Rst_A, histo_EN_A, histo_WEN_A, 
  histo_Addr_A, histo_Din_A, histo_Dout_A, histo_Clk_B, histo_Rst_B, histo_EN_B, histo_WEN_B, 
  histo_Addr_B, histo_Din_B, histo_Dout_B)
/* synthesis syn_black_box black_box_pad_pin="ap_local_block,s_axi_ctrl_bus_AWADDR[3:0],s_axi_ctrl_bus_AWVALID,s_axi_ctrl_bus_AWREADY,s_axi_ctrl_bus_WDATA[31:0],s_axi_ctrl_bus_WSTRB[3:0],s_axi_ctrl_bus_WVALID,s_axi_ctrl_bus_WREADY,s_axi_ctrl_bus_BRESP[1:0],s_axi_ctrl_bus_BVALID,s_axi_ctrl_bus_BREADY,s_axi_ctrl_bus_ARADDR[3:0],s_axi_ctrl_bus_ARVALID,s_axi_ctrl_bus_ARREADY,s_axi_ctrl_bus_RDATA[31:0],s_axi_ctrl_bus_RRESP[1:0],s_axi_ctrl_bus_RVALID,s_axi_ctrl_bus_RREADY,ap_clk,ap_rst_n,interrupt,inStream_TVALID,inStream_TREADY,inStream_TDATA[7:0],inStream_TDEST[5:0],inStream_TKEEP[0:0],inStream_TSTRB[0:0],inStream_TUSER[1:0],inStream_TLAST[0:0],inStream_TID[4:0],histo_Clk_A,histo_Rst_A,histo_EN_A,histo_WEN_A[3:0],histo_Addr_A[31:0],histo_Din_A[31:0],histo_Dout_A[31:0],histo_Clk_B,histo_Rst_B,histo_EN_B,histo_WEN_B[3:0],histo_Addr_B[31:0],histo_Din_B[31:0],histo_Dout_B[31:0]" */;
  output ap_local_block;
  input [3:0]s_axi_ctrl_bus_AWADDR;
  input s_axi_ctrl_bus_AWVALID;
  output s_axi_ctrl_bus_AWREADY;
  input [31:0]s_axi_ctrl_bus_WDATA;
  input [3:0]s_axi_ctrl_bus_WSTRB;
  input s_axi_ctrl_bus_WVALID;
  output s_axi_ctrl_bus_WREADY;
  output [1:0]s_axi_ctrl_bus_BRESP;
  output s_axi_ctrl_bus_BVALID;
  input s_axi_ctrl_bus_BREADY;
  input [3:0]s_axi_ctrl_bus_ARADDR;
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
  output histo_Clk_A;
  output histo_Rst_A;
  output histo_EN_A;
  output [3:0]histo_WEN_A;
  output [31:0]histo_Addr_A;
  output [31:0]histo_Din_A;
  input [31:0]histo_Dout_A;
  output histo_Clk_B;
  output histo_Rst_B;
  output histo_EN_B;
  output [3:0]histo_WEN_B;
  output [31:0]histo_Addr_B;
  output [31:0]histo_Din_B;
  input [31:0]histo_Dout_B;
endmodule
