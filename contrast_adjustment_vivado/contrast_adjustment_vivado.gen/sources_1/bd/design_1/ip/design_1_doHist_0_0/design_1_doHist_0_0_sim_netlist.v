// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar  7 15:21:39 2022
// Host        : sam-HP-Pavilion-Laptop-15-eg0xxx running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sam/git_workspace/contrast-adjustment-high-level-synthesis/contrast_adjustment_vivado/contrast_adjustment_vivado.gen/sources_1/bd/design_1/ip/design_1_doHist_0_0/design_1_doHist_0_0_sim_netlist.v
// Design      : design_1_doHist_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_doHist_0_0,doHist,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "doHist,Vivado 2021.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_doHist_0_0
   (ap_local_block,
    s_axi_ctrl_bus_AWADDR,
    s_axi_ctrl_bus_AWVALID,
    s_axi_ctrl_bus_AWREADY,
    s_axi_ctrl_bus_WDATA,
    s_axi_ctrl_bus_WSTRB,
    s_axi_ctrl_bus_WVALID,
    s_axi_ctrl_bus_WREADY,
    s_axi_ctrl_bus_BRESP,
    s_axi_ctrl_bus_BVALID,
    s_axi_ctrl_bus_BREADY,
    s_axi_ctrl_bus_ARADDR,
    s_axi_ctrl_bus_ARVALID,
    s_axi_ctrl_bus_ARREADY,
    s_axi_ctrl_bus_RDATA,
    s_axi_ctrl_bus_RRESP,
    s_axi_ctrl_bus_RVALID,
    s_axi_ctrl_bus_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TDATA,
    inStream_TDEST,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    histo_Clk_A,
    histo_Rst_A,
    histo_EN_A,
    histo_WEN_A,
    histo_Addr_A,
    histo_Din_A,
    histo_Dout_A,
    histo_Clk_B,
    histo_Rst_B,
    histo_EN_B,
    histo_WEN_B,
    histo_Addr_B,
    histo_Din_B,
    histo_Dout_B);
  output ap_local_block;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWADDR" *) input [3:0]s_axi_ctrl_bus_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWVALID" *) input s_axi_ctrl_bus_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWREADY" *) output s_axi_ctrl_bus_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WDATA" *) input [31:0]s_axi_ctrl_bus_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WSTRB" *) input [3:0]s_axi_ctrl_bus_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WVALID" *) input s_axi_ctrl_bus_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WREADY" *) output s_axi_ctrl_bus_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BRESP" *) output [1:0]s_axi_ctrl_bus_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BVALID" *) output s_axi_ctrl_bus_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BREADY" *) input s_axi_ctrl_bus_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARADDR" *) input [3:0]s_axi_ctrl_bus_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARVALID" *) input s_axi_ctrl_bus_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARREADY" *) output s_axi_ctrl_bus_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RDATA" *) output [31:0]s_axi_ctrl_bus_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RRESP" *) output [1:0]s_axi_ctrl_bus_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RVALID" *) output s_axi_ctrl_bus_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_bus, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_bus_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl_bus:inStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TVALID" *) input inStream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TREADY" *) output inStream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDATA" *) input [7:0]inStream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDEST" *) input [5:0]inStream_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TKEEP" *) input [0:0]inStream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TSTRB" *) input [0:0]inStream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TUSER" *) input [1:0]inStream_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TLAST" *) input [0:0]inStream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [4:0]inStream_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA CLK" *) output histo_Clk_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA RST" *) output histo_Rst_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA EN" *) output histo_EN_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA WE" *) output [3:0]histo_WEN_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA ADDR" *) output [31:0]histo_Addr_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA DIN" *) output [31:0]histo_Din_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTA DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME histo_PORTA, MEM_WIDTH 32, MEM_SIZE 4, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1" *) input [31:0]histo_Dout_A;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTB CLK" *) output histo_Clk_B;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTB RST" *) output histo_Rst_B;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTB EN" *) output histo_EN_B;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTB WE" *) output [3:0]histo_WEN_B;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTB ADDR" *) output [31:0]histo_Addr_B;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTB DIN" *) output [31:0]histo_Din_B;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 histo_PORTB DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME histo_PORTB, MEM_WIDTH 32, MEM_SIZE 4, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1" *) input [31:0]histo_Dout_B;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [10:2]\^histo_Addr_A ;
  wire [9:2]\^histo_Addr_B ;
  wire histo_Clk_A;
  wire histo_Clk_B;
  wire [31:0]histo_Din_A;
  wire [31:0]histo_Dout_B;
  wire histo_EN_A;
  wire histo_EN_B;
  wire histo_Rst_A;
  wire histo_Rst_B;
  wire [3:0]histo_WEN_A;
  wire [7:0]inStream_TDATA;
  wire inStream_TREADY;
  wire inStream_TVALID;
  wire interrupt;
  wire [3:0]s_axi_ctrl_bus_ARADDR;
  wire s_axi_ctrl_bus_ARREADY;
  wire s_axi_ctrl_bus_ARVALID;
  wire [3:0]s_axi_ctrl_bus_AWADDR;
  wire s_axi_ctrl_bus_AWREADY;
  wire s_axi_ctrl_bus_AWVALID;
  wire s_axi_ctrl_bus_BREADY;
  wire s_axi_ctrl_bus_BVALID;
  wire [7:0]\^s_axi_ctrl_bus_RDATA ;
  wire s_axi_ctrl_bus_RREADY;
  wire s_axi_ctrl_bus_RVALID;
  wire [31:0]s_axi_ctrl_bus_WDATA;
  wire s_axi_ctrl_bus_WREADY;
  wire [3:0]s_axi_ctrl_bus_WSTRB;
  wire s_axi_ctrl_bus_WVALID;
  wire NLW_inst_ap_local_block_UNCONNECTED;
  wire [31:0]NLW_inst_histo_Addr_A_UNCONNECTED;
  wire [31:0]NLW_inst_histo_Addr_B_UNCONNECTED;
  wire [31:0]NLW_inst_histo_Din_B_UNCONNECTED;
  wire [3:0]NLW_inst_histo_WEN_B_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bus_BRESP_UNCONNECTED;
  wire [31:6]NLW_inst_s_axi_ctrl_bus_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bus_RRESP_UNCONNECTED;

  assign ap_local_block = \<const0> ;
  assign histo_Addr_A[31] = \<const0> ;
  assign histo_Addr_A[30] = \<const0> ;
  assign histo_Addr_A[29] = \<const0> ;
  assign histo_Addr_A[28] = \<const0> ;
  assign histo_Addr_A[27] = \<const0> ;
  assign histo_Addr_A[26] = \<const0> ;
  assign histo_Addr_A[25] = \<const0> ;
  assign histo_Addr_A[24] = \<const0> ;
  assign histo_Addr_A[23] = \<const0> ;
  assign histo_Addr_A[22] = \<const0> ;
  assign histo_Addr_A[21] = \<const0> ;
  assign histo_Addr_A[20] = \<const0> ;
  assign histo_Addr_A[19] = \<const0> ;
  assign histo_Addr_A[18] = \<const0> ;
  assign histo_Addr_A[17] = \<const0> ;
  assign histo_Addr_A[16] = \<const0> ;
  assign histo_Addr_A[15] = \<const0> ;
  assign histo_Addr_A[14] = \<const0> ;
  assign histo_Addr_A[13] = \<const0> ;
  assign histo_Addr_A[12] = \<const0> ;
  assign histo_Addr_A[11] = \<const0> ;
  assign histo_Addr_A[10:2] = \^histo_Addr_A [10:2];
  assign histo_Addr_A[1] = \<const0> ;
  assign histo_Addr_A[0] = \<const0> ;
  assign histo_Addr_B[31] = \<const0> ;
  assign histo_Addr_B[30] = \<const0> ;
  assign histo_Addr_B[29] = \<const0> ;
  assign histo_Addr_B[28] = \<const0> ;
  assign histo_Addr_B[27] = \<const0> ;
  assign histo_Addr_B[26] = \<const0> ;
  assign histo_Addr_B[25] = \<const0> ;
  assign histo_Addr_B[24] = \<const0> ;
  assign histo_Addr_B[23] = \<const0> ;
  assign histo_Addr_B[22] = \<const0> ;
  assign histo_Addr_B[21] = \<const0> ;
  assign histo_Addr_B[20] = \<const0> ;
  assign histo_Addr_B[19] = \<const0> ;
  assign histo_Addr_B[18] = \<const0> ;
  assign histo_Addr_B[17] = \<const0> ;
  assign histo_Addr_B[16] = \<const0> ;
  assign histo_Addr_B[15] = \<const0> ;
  assign histo_Addr_B[14] = \<const0> ;
  assign histo_Addr_B[13] = \<const0> ;
  assign histo_Addr_B[12] = \<const0> ;
  assign histo_Addr_B[11] = \<const0> ;
  assign histo_Addr_B[10] = \<const0> ;
  assign histo_Addr_B[9:2] = \^histo_Addr_B [9:2];
  assign histo_Addr_B[1] = \<const0> ;
  assign histo_Addr_B[0] = \<const0> ;
  assign histo_Din_B[31] = \<const0> ;
  assign histo_Din_B[30] = \<const0> ;
  assign histo_Din_B[29] = \<const0> ;
  assign histo_Din_B[28] = \<const0> ;
  assign histo_Din_B[27] = \<const0> ;
  assign histo_Din_B[26] = \<const0> ;
  assign histo_Din_B[25] = \<const0> ;
  assign histo_Din_B[24] = \<const0> ;
  assign histo_Din_B[23] = \<const0> ;
  assign histo_Din_B[22] = \<const0> ;
  assign histo_Din_B[21] = \<const0> ;
  assign histo_Din_B[20] = \<const0> ;
  assign histo_Din_B[19] = \<const0> ;
  assign histo_Din_B[18] = \<const0> ;
  assign histo_Din_B[17] = \<const0> ;
  assign histo_Din_B[16] = \<const0> ;
  assign histo_Din_B[15] = \<const0> ;
  assign histo_Din_B[14] = \<const0> ;
  assign histo_Din_B[13] = \<const0> ;
  assign histo_Din_B[12] = \<const0> ;
  assign histo_Din_B[11] = \<const0> ;
  assign histo_Din_B[10] = \<const0> ;
  assign histo_Din_B[9] = \<const0> ;
  assign histo_Din_B[8] = \<const0> ;
  assign histo_Din_B[7] = \<const0> ;
  assign histo_Din_B[6] = \<const0> ;
  assign histo_Din_B[5] = \<const0> ;
  assign histo_Din_B[4] = \<const0> ;
  assign histo_Din_B[3] = \<const0> ;
  assign histo_Din_B[2] = \<const0> ;
  assign histo_Din_B[1] = \<const0> ;
  assign histo_Din_B[0] = \<const0> ;
  assign histo_WEN_B[3] = \<const0> ;
  assign histo_WEN_B[2] = \<const0> ;
  assign histo_WEN_B[1] = \<const0> ;
  assign histo_WEN_B[0] = \<const0> ;
  assign s_axi_ctrl_bus_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_bus_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[28] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[24] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[16] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[9] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[7] = \^s_axi_ctrl_bus_RDATA [7];
  assign s_axi_ctrl_bus_RDATA[6] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[5:0] = \^s_axi_ctrl_bus_RDATA [5:0];
  assign s_axi_ctrl_bus_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_bus_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  design_1_doHist_0_0_doHist inst
       (.ap_clk(ap_clk),
        .ap_local_block(NLW_inst_ap_local_block_UNCONNECTED),
        .ap_rst_n(ap_rst_n),
        .histo_Addr_A({NLW_inst_histo_Addr_A_UNCONNECTED[31:11],\^histo_Addr_A ,NLW_inst_histo_Addr_A_UNCONNECTED[1:0]}),
        .histo_Addr_B({NLW_inst_histo_Addr_B_UNCONNECTED[31:10],\^histo_Addr_B ,NLW_inst_histo_Addr_B_UNCONNECTED[1:0]}),
        .histo_Clk_A(histo_Clk_A),
        .histo_Clk_B(histo_Clk_B),
        .histo_Din_A(histo_Din_A),
        .histo_Din_B(NLW_inst_histo_Din_B_UNCONNECTED[31:0]),
        .histo_Dout_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .histo_Dout_B(histo_Dout_B),
        .histo_EN_A(histo_EN_A),
        .histo_EN_B(histo_EN_B),
        .histo_Rst_A(histo_Rst_A),
        .histo_Rst_B(histo_Rst_B),
        .histo_WEN_A(histo_WEN_A),
        .histo_WEN_B(NLW_inst_histo_WEN_B_UNCONNECTED[3:0]),
        .inStream_TDATA(inStream_TDATA),
        .inStream_TDEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .inStream_TID({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .inStream_TKEEP(1'b0),
        .inStream_TLAST(1'b0),
        .inStream_TREADY(inStream_TREADY),
        .inStream_TSTRB(1'b0),
        .inStream_TUSER({1'b0,1'b0}),
        .inStream_TVALID(inStream_TVALID),
        .interrupt(interrupt),
        .s_axi_ctrl_bus_ARADDR(s_axi_ctrl_bus_ARADDR),
        .s_axi_ctrl_bus_ARREADY(s_axi_ctrl_bus_ARREADY),
        .s_axi_ctrl_bus_ARVALID(s_axi_ctrl_bus_ARVALID),
        .s_axi_ctrl_bus_AWADDR(s_axi_ctrl_bus_AWADDR),
        .s_axi_ctrl_bus_AWREADY(s_axi_ctrl_bus_AWREADY),
        .s_axi_ctrl_bus_AWVALID(s_axi_ctrl_bus_AWVALID),
        .s_axi_ctrl_bus_BREADY(s_axi_ctrl_bus_BREADY),
        .s_axi_ctrl_bus_BRESP(NLW_inst_s_axi_ctrl_bus_BRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_bus_BVALID(s_axi_ctrl_bus_BVALID),
        .s_axi_ctrl_bus_RDATA({NLW_inst_s_axi_ctrl_bus_RDATA_UNCONNECTED[31:8],\^s_axi_ctrl_bus_RDATA }),
        .s_axi_ctrl_bus_RREADY(s_axi_ctrl_bus_RREADY),
        .s_axi_ctrl_bus_RRESP(NLW_inst_s_axi_ctrl_bus_RRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_bus_RVALID(s_axi_ctrl_bus_RVALID),
        .s_axi_ctrl_bus_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_bus_WDATA[7],1'b0,s_axi_ctrl_bus_WDATA[5:0]}),
        .s_axi_ctrl_bus_WREADY(s_axi_ctrl_bus_WREADY),
        .s_axi_ctrl_bus_WSTRB({1'b0,1'b0,1'b0,s_axi_ctrl_bus_WSTRB[0]}),
        .s_axi_ctrl_bus_WVALID(s_axi_ctrl_bus_WVALID));
endmodule

(* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "doHist" *) 
(* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) (* ap_ST_fsm_state3 = "4'b0100" *) 
(* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module design_1_doHist_0_0_doHist
   (ap_local_block,
    ap_clk,
    ap_rst_n,
    inStream_TDATA,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    inStream_TDEST,
    histo_Addr_A,
    histo_EN_A,
    histo_WEN_A,
    histo_Din_A,
    histo_Dout_A,
    histo_Clk_A,
    histo_Rst_A,
    histo_Addr_B,
    histo_EN_B,
    histo_WEN_B,
    histo_Din_B,
    histo_Dout_B,
    histo_Clk_B,
    histo_Rst_B,
    s_axi_ctrl_bus_AWVALID,
    s_axi_ctrl_bus_AWREADY,
    s_axi_ctrl_bus_AWADDR,
    s_axi_ctrl_bus_WVALID,
    s_axi_ctrl_bus_WREADY,
    s_axi_ctrl_bus_WDATA,
    s_axi_ctrl_bus_WSTRB,
    s_axi_ctrl_bus_ARVALID,
    s_axi_ctrl_bus_ARREADY,
    s_axi_ctrl_bus_ARADDR,
    s_axi_ctrl_bus_RVALID,
    s_axi_ctrl_bus_RREADY,
    s_axi_ctrl_bus_RDATA,
    s_axi_ctrl_bus_RRESP,
    s_axi_ctrl_bus_BVALID,
    s_axi_ctrl_bus_BREADY,
    s_axi_ctrl_bus_BRESP,
    interrupt);
  output ap_local_block;
  input ap_clk;
  input ap_rst_n;
  input [7:0]inStream_TDATA;
  input inStream_TVALID;
  output inStream_TREADY;
  input [0:0]inStream_TKEEP;
  input [0:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  input [5:0]inStream_TDEST;
  output [31:0]histo_Addr_A;
  output histo_EN_A;
  output [3:0]histo_WEN_A;
  output [31:0]histo_Din_A;
  input [31:0]histo_Dout_A;
  output histo_Clk_A;
  output histo_Rst_A;
  output [31:0]histo_Addr_B;
  output histo_EN_B;
  output [3:0]histo_WEN_B;
  output [31:0]histo_Din_B;
  input [31:0]histo_Dout_B;
  output histo_Clk_B;
  output histo_Rst_B;
  input s_axi_ctrl_bus_AWVALID;
  output s_axi_ctrl_bus_AWREADY;
  input [3:0]s_axi_ctrl_bus_AWADDR;
  input s_axi_ctrl_bus_WVALID;
  output s_axi_ctrl_bus_WREADY;
  input [31:0]s_axi_ctrl_bus_WDATA;
  input [3:0]s_axi_ctrl_bus_WSTRB;
  input s_axi_ctrl_bus_ARVALID;
  output s_axi_ctrl_bus_ARREADY;
  input [3:0]s_axi_ctrl_bus_ARADDR;
  output s_axi_ctrl_bus_RVALID;
  input s_axi_ctrl_bus_RREADY;
  output [31:0]s_axi_ctrl_bus_RDATA;
  output [1:0]s_axi_ctrl_bus_RRESP;
  output s_axi_ctrl_bus_BVALID;
  input s_axi_ctrl_bus_BREADY;
  output [1:0]s_axi_ctrl_bus_BRESP;
  output interrupt;

  wire \<const0> ;
  wire B_V_data_1_sel;
  wire [1:1]B_V_data_1_state;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_done_reg1;
  wire ap_rst_n;
  wire ap_start;
  wire ctrl_bus_s_axi_U_n_9;
  wire grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_10;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_11;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_12;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_13;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_4;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_54;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_55;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_56;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_57;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_7;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_8;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_9;
  wire [10:2]\^histo_Addr_A ;
  wire [9:2]\^histo_Addr_B ;
  wire [31:0]histo_Din_A;
  wire [31:0]histo_Dout_B;
  wire histo_EN_A;
  wire histo_EN_B;
  wire histo_Rst_B;
  wire [3:3]\^histo_WEN_A ;
  wire [7:0]histo_addr_reg_206;
  wire idxHist_fu_32;
  wire [7:0]inStream_TDATA;
  wire inStream_TREADY;
  wire inStream_TVALID;
  wire inStream_TVALID_int_regslice;
  wire interrupt;
  wire regslice_both_inStream_V_data_V_U_n_11;
  wire regslice_both_inStream_V_data_V_U_n_12;
  wire regslice_both_inStream_V_data_V_U_n_13;
  wire regslice_both_inStream_V_data_V_U_n_14;
  wire regslice_both_inStream_V_data_V_U_n_15;
  wire regslice_both_inStream_V_data_V_U_n_16;
  wire regslice_both_inStream_V_data_V_U_n_17;
  wire regslice_both_inStream_V_data_V_U_n_18;
  wire regslice_both_inStream_V_data_V_U_n_19;
  wire regslice_both_inStream_V_data_V_U_n_20;
  wire regslice_both_inStream_V_data_V_U_n_21;
  wire [3:0]s_axi_ctrl_bus_ARADDR;
  wire s_axi_ctrl_bus_ARREADY;
  wire s_axi_ctrl_bus_ARVALID;
  wire [3:0]s_axi_ctrl_bus_AWADDR;
  wire s_axi_ctrl_bus_AWREADY;
  wire s_axi_ctrl_bus_AWVALID;
  wire s_axi_ctrl_bus_BREADY;
  wire s_axi_ctrl_bus_BVALID;
  wire [7:0]\^s_axi_ctrl_bus_RDATA ;
  wire s_axi_ctrl_bus_RREADY;
  wire s_axi_ctrl_bus_RVALID;
  wire [31:0]s_axi_ctrl_bus_WDATA;
  wire s_axi_ctrl_bus_WREADY;
  wire [3:0]s_axi_ctrl_bus_WSTRB;
  wire s_axi_ctrl_bus_WVALID;

  assign ap_local_block = \<const0> ;
  assign histo_Addr_A[31] = \<const0> ;
  assign histo_Addr_A[30] = \<const0> ;
  assign histo_Addr_A[29] = \<const0> ;
  assign histo_Addr_A[28] = \<const0> ;
  assign histo_Addr_A[27] = \<const0> ;
  assign histo_Addr_A[26] = \<const0> ;
  assign histo_Addr_A[25] = \<const0> ;
  assign histo_Addr_A[24] = \<const0> ;
  assign histo_Addr_A[23] = \<const0> ;
  assign histo_Addr_A[22] = \<const0> ;
  assign histo_Addr_A[21] = \<const0> ;
  assign histo_Addr_A[20] = \<const0> ;
  assign histo_Addr_A[19] = \<const0> ;
  assign histo_Addr_A[18] = \<const0> ;
  assign histo_Addr_A[17] = \<const0> ;
  assign histo_Addr_A[16] = \<const0> ;
  assign histo_Addr_A[15] = \<const0> ;
  assign histo_Addr_A[14] = \<const0> ;
  assign histo_Addr_A[13] = \<const0> ;
  assign histo_Addr_A[12] = \<const0> ;
  assign histo_Addr_A[11] = \<const0> ;
  assign histo_Addr_A[10:2] = \^histo_Addr_A [10:2];
  assign histo_Addr_A[1] = \<const0> ;
  assign histo_Addr_A[0] = \<const0> ;
  assign histo_Addr_B[31] = \<const0> ;
  assign histo_Addr_B[30] = \<const0> ;
  assign histo_Addr_B[29] = \<const0> ;
  assign histo_Addr_B[28] = \<const0> ;
  assign histo_Addr_B[27] = \<const0> ;
  assign histo_Addr_B[26] = \<const0> ;
  assign histo_Addr_B[25] = \<const0> ;
  assign histo_Addr_B[24] = \<const0> ;
  assign histo_Addr_B[23] = \<const0> ;
  assign histo_Addr_B[22] = \<const0> ;
  assign histo_Addr_B[21] = \<const0> ;
  assign histo_Addr_B[20] = \<const0> ;
  assign histo_Addr_B[19] = \<const0> ;
  assign histo_Addr_B[18] = \<const0> ;
  assign histo_Addr_B[17] = \<const0> ;
  assign histo_Addr_B[16] = \<const0> ;
  assign histo_Addr_B[15] = \<const0> ;
  assign histo_Addr_B[14] = \<const0> ;
  assign histo_Addr_B[13] = \<const0> ;
  assign histo_Addr_B[12] = \<const0> ;
  assign histo_Addr_B[11] = \<const0> ;
  assign histo_Addr_B[10] = \<const0> ;
  assign histo_Addr_B[9:2] = \^histo_Addr_B [9:2];
  assign histo_Addr_B[1] = \<const0> ;
  assign histo_Addr_B[0] = \<const0> ;
  assign histo_Clk_A = ap_clk;
  assign histo_Clk_B = ap_clk;
  assign histo_Din_B[31] = \<const0> ;
  assign histo_Din_B[30] = \<const0> ;
  assign histo_Din_B[29] = \<const0> ;
  assign histo_Din_B[28] = \<const0> ;
  assign histo_Din_B[27] = \<const0> ;
  assign histo_Din_B[26] = \<const0> ;
  assign histo_Din_B[25] = \<const0> ;
  assign histo_Din_B[24] = \<const0> ;
  assign histo_Din_B[23] = \<const0> ;
  assign histo_Din_B[22] = \<const0> ;
  assign histo_Din_B[21] = \<const0> ;
  assign histo_Din_B[20] = \<const0> ;
  assign histo_Din_B[19] = \<const0> ;
  assign histo_Din_B[18] = \<const0> ;
  assign histo_Din_B[17] = \<const0> ;
  assign histo_Din_B[16] = \<const0> ;
  assign histo_Din_B[15] = \<const0> ;
  assign histo_Din_B[14] = \<const0> ;
  assign histo_Din_B[13] = \<const0> ;
  assign histo_Din_B[12] = \<const0> ;
  assign histo_Din_B[11] = \<const0> ;
  assign histo_Din_B[10] = \<const0> ;
  assign histo_Din_B[9] = \<const0> ;
  assign histo_Din_B[8] = \<const0> ;
  assign histo_Din_B[7] = \<const0> ;
  assign histo_Din_B[6] = \<const0> ;
  assign histo_Din_B[5] = \<const0> ;
  assign histo_Din_B[4] = \<const0> ;
  assign histo_Din_B[3] = \<const0> ;
  assign histo_Din_B[2] = \<const0> ;
  assign histo_Din_B[1] = \<const0> ;
  assign histo_Din_B[0] = \<const0> ;
  assign histo_Rst_A = histo_Rst_B;
  assign histo_WEN_A[3] = \^histo_WEN_A [3];
  assign histo_WEN_A[2] = \^histo_WEN_A [3];
  assign histo_WEN_A[1] = \^histo_WEN_A [3];
  assign histo_WEN_A[0] = \^histo_WEN_A [3];
  assign histo_WEN_B[3] = \<const0> ;
  assign histo_WEN_B[2] = \<const0> ;
  assign histo_WEN_B[1] = \<const0> ;
  assign histo_WEN_B[0] = \<const0> ;
  assign s_axi_ctrl_bus_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_bus_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[31] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[30] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[29] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[28] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[27] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[26] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[25] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[24] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[23] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[22] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[21] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[20] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[19] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[18] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[17] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[16] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[15] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[14] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[13] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[12] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[11] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[10] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[9] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[8] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[7] = \^s_axi_ctrl_bus_RDATA [7];
  assign s_axi_ctrl_bus_RDATA[6] = \<const0> ;
  assign s_axi_ctrl_bus_RDATA[5:0] = \^s_axi_ctrl_bus_RDATA [5:0];
  assign s_axi_ctrl_bus_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_bus_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(histo_Rst_B));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(histo_Rst_B));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(histo_Rst_B));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(histo_Rst_B));
  design_1_doHist_0_0_doHist_ctrl_bus_s_axi ctrl_bus_s_axi_U
       (.D(ap_NS_fsm[0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_ctrl_bus_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_ctrl_bus_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_ctrl_bus_WREADY),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_done_reg1(ap_done_reg1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(histo_Rst_B),
        .ap_start(ap_start),
        .grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .int_ap_start_reg_0(ctrl_bus_s_axi_U_n_9),
        .interrupt(interrupt),
        .s_axi_ctrl_bus_ARADDR(s_axi_ctrl_bus_ARADDR),
        .s_axi_ctrl_bus_ARVALID(s_axi_ctrl_bus_ARVALID),
        .s_axi_ctrl_bus_AWADDR(s_axi_ctrl_bus_AWADDR),
        .s_axi_ctrl_bus_AWVALID(s_axi_ctrl_bus_AWVALID),
        .s_axi_ctrl_bus_BREADY(s_axi_ctrl_bus_BREADY),
        .s_axi_ctrl_bus_BVALID(s_axi_ctrl_bus_BVALID),
        .s_axi_ctrl_bus_RDATA({\^s_axi_ctrl_bus_RDATA [7],\^s_axi_ctrl_bus_RDATA [5:0]}),
        .s_axi_ctrl_bus_RREADY(s_axi_ctrl_bus_RREADY),
        .s_axi_ctrl_bus_RVALID(s_axi_ctrl_bus_RVALID),
        .s_axi_ctrl_bus_WDATA({s_axi_ctrl_bus_WDATA[7],s_axi_ctrl_bus_WDATA[5:0]}),
        .s_axi_ctrl_bus_WSTRB(s_axi_ctrl_bus_WSTRB[0]),
        .s_axi_ctrl_bus_WVALID(s_axi_ctrl_bus_WVALID));
  design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_12_1 grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48
       (.D(ap_NS_fsm[2:1]),
        .E(idxHist_fu_32),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_done_cache_reg(histo_Rst_B),
        .ap_done_reg1(ap_done_reg1),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .histo_Addr_A(\^histo_Addr_A ),
        .\histo_Addr_A[9] (histo_addr_reg_206));
  FDRE #(
    .INIT(1'b0)) 
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ctrl_bus_s_axi_U_n_9),
        .Q(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .R(histo_Rst_B));
  design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_19_2 grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54
       (.B_V_data_1_sel(B_V_data_1_sel),
        .B_V_data_1_state(B_V_data_1_state),
        .\B_V_data_1_state_reg[1] (inStream_TREADY),
        .D(ap_NS_fsm[3]),
        .E(idxHist_fu_32),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .S({regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_20,regslice_both_inStream_V_data_V_U_n_21}),
        .addr_cmp_fu_150_p2_carry_i_3({regslice_both_inStream_V_data_V_U_n_15,regslice_both_inStream_V_data_V_U_n_16,regslice_both_inStream_V_data_V_U_n_17,regslice_both_inStream_V_data_V_U_n_18}),
        .addr_cmp_fu_150_p2_carry_i_3_0({regslice_both_inStream_V_data_V_U_n_11,regslice_both_inStream_V_data_V_U_n_12,regslice_both_inStream_V_data_V_U_n_13,regslice_both_inStream_V_data_V_U_n_14}),
        .\ap_CS_fsm_reg[2] (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_12),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_done_cache_reg(histo_Rst_B),
        .ap_rst_n(ap_rst_n),
        .grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .histo_Addr_B(\^histo_Addr_B ),
        .histo_Din_A(histo_Din_A),
        .histo_Dout_B(histo_Dout_B),
        .histo_EN_A(histo_EN_A),
        .histo_EN_B(histo_EN_B),
        .histo_WEN_A(\^histo_WEN_A ),
        .\histo_addr_reg_206_reg[7]_0 (histo_addr_reg_206),
        .\icmp_ln19_reg_202_reg[0]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_4),
        .\icmp_ln19_reg_202_reg[0]_1 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_13),
        .inStream_TVALID(inStream_TVALID),
        .inStream_TVALID_int_regslice(inStream_TVALID_int_regslice),
        .\reuse_addr_reg_fu_56_reg[0]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_7),
        .\reuse_addr_reg_fu_56_reg[0]_1 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_8),
        .\reuse_addr_reg_fu_56_reg[2]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_57),
        .\reuse_addr_reg_fu_56_reg[3]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_9),
        .\reuse_addr_reg_fu_56_reg[3]_1 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_10),
        .\reuse_addr_reg_fu_56_reg[5]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_56),
        .\reuse_addr_reg_fu_56_reg[6]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_55),
        .\reuse_addr_reg_fu_56_reg[7]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_54),
        .\reuse_addr_reg_fu_56_reg[8]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_11));
  FDRE #(
    .INIT(1'b0)) 
    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_12),
        .Q(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .R(histo_Rst_B));
  design_1_doHist_0_0_doHist_regslice_both regslice_both_inStream_V_data_V_U
       (.\B_V_data_1_payload_A_reg[4]_0 ({regslice_both_inStream_V_data_V_U_n_15,regslice_both_inStream_V_data_V_U_n_16,regslice_both_inStream_V_data_V_U_n_17,regslice_both_inStream_V_data_V_U_n_18}),
        .B_V_data_1_sel(B_V_data_1_sel),
        .B_V_data_1_sel_rd_reg_0(histo_Rst_B),
        .B_V_data_1_sel_rd_reg_1(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_13),
        .B_V_data_1_state(B_V_data_1_state),
        .\B_V_data_1_state_reg[0]_0 (grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_4),
        .\B_V_data_1_state_reg[1]_0 (inStream_TREADY),
        .Q({regslice_both_inStream_V_data_V_U_n_11,regslice_both_inStream_V_data_V_U_n_12,regslice_both_inStream_V_data_V_U_n_13,regslice_both_inStream_V_data_V_U_n_14}),
        .S({regslice_both_inStream_V_data_V_U_n_19,regslice_both_inStream_V_data_V_U_n_20,regslice_both_inStream_V_data_V_U_n_21}),
        .addr_cmp_fu_150_p2_carry(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_8),
        .addr_cmp_fu_150_p2_carry_0(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_57),
        .addr_cmp_fu_150_p2_carry_1(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_7),
        .addr_cmp_fu_150_p2_carry_2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_10),
        .addr_cmp_fu_150_p2_carry_3(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_56),
        .addr_cmp_fu_150_p2_carry_4(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_9),
        .addr_cmp_fu_150_p2_carry_i_2_0(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_54),
        .addr_cmp_fu_150_p2_carry_i_2_1(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_11),
        .addr_cmp_fu_150_p2_carry_i_2_2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_55),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .histo_Addr_B(\^histo_Addr_B ),
        .inStream_TDATA(inStream_TDATA),
        .inStream_TVALID(inStream_TVALID),
        .inStream_TVALID_int_regslice(inStream_TVALID_int_regslice));
endmodule

(* ORIG_REF_NAME = "doHist_ctrl_bus_s_axi" *) 
module design_1_doHist_0_0_doHist_ctrl_bus_s_axi
   (ap_rst_n_0,
    D,
    ap_start,
    s_axi_ctrl_bus_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_ctrl_bus_BVALID,
    interrupt,
    \FSM_onehot_wstate_reg[1]_0 ,
    int_ap_start_reg_0,
    s_axi_ctrl_bus_RDATA,
    ap_clk,
    ap_rst_n,
    Q,
    ap_done,
    s_axi_ctrl_bus_RREADY,
    s_axi_ctrl_bus_ARVALID,
    s_axi_ctrl_bus_WDATA,
    s_axi_ctrl_bus_WSTRB,
    s_axi_ctrl_bus_WVALID,
    s_axi_ctrl_bus_BREADY,
    s_axi_ctrl_bus_ARADDR,
    s_axi_ctrl_bus_AWVALID,
    ap_done_reg1,
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
    s_axi_ctrl_bus_AWADDR);
  output ap_rst_n_0;
  output [0:0]D;
  output ap_start;
  output s_axi_ctrl_bus_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_ctrl_bus_BVALID;
  output interrupt;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output int_ap_start_reg_0;
  output [6:0]s_axi_ctrl_bus_RDATA;
  input ap_clk;
  input ap_rst_n;
  input [0:0]Q;
  input ap_done;
  input s_axi_ctrl_bus_RREADY;
  input s_axi_ctrl_bus_ARVALID;
  input [6:0]s_axi_ctrl_bus_WDATA;
  input [0:0]s_axi_ctrl_bus_WSTRB;
  input s_axi_ctrl_bus_WVALID;
  input s_axi_ctrl_bus_BREADY;
  input [3:0]s_axi_ctrl_bus_ARADDR;
  input s_axi_ctrl_bus_AWVALID;
  input ap_done_reg1;
  input grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  input [3:0]s_axi_ctrl_bus_AWADDR;

  wire [0:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_done;
  wire ap_done_reg1;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier12_out;
  wire \int_ier[5]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[2] ;
  wire \int_ier_reg_n_0_[3] ;
  wire \int_ier_reg_n_0_[4] ;
  wire int_isr9_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr[5]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[5] ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire interrupt;
  wire [7:2]p_0_in;
  wire p_0_in6_in;
  wire p_0_in__0;
  wire p_1_in1_in;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire [3:0]s_axi_ctrl_bus_ARADDR;
  wire s_axi_ctrl_bus_ARVALID;
  wire [3:0]s_axi_ctrl_bus_AWADDR;
  wire s_axi_ctrl_bus_AWVALID;
  wire s_axi_ctrl_bus_BREADY;
  wire s_axi_ctrl_bus_BVALID;
  wire [6:0]s_axi_ctrl_bus_RDATA;
  wire s_axi_ctrl_bus_RREADY;
  wire s_axi_ctrl_bus_RVALID;
  wire [6:0]s_axi_ctrl_bus_WDATA;
  wire [0:0]s_axi_ctrl_bus_WSTRB;
  wire s_axi_ctrl_bus_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8FDD)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_ctrl_bus_RVALID),
        .I1(s_axi_ctrl_bus_RREADY),
        .I2(s_axi_ctrl_bus_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_ctrl_bus_RREADY),
        .I1(s_axi_ctrl_bus_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_ctrl_bus_ARVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_0));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_bus_RVALID),
        .R(ap_rst_n_0));
  LUT5 #(
    .INIT(32'hC0FFD1D1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_ctrl_bus_BVALID),
        .I2(s_axi_ctrl_bus_BREADY),
        .I3(s_axi_ctrl_bus_AWVALID),
        .I4(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_ctrl_bus_AWVALID),
        .I2(s_axi_ctrl_bus_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_ctrl_bus_BREADY),
        .I1(s_axi_ctrl_bus_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_ctrl_bus_WVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_0));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_0));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_bus_BVALID),
        .R(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q),
        .I2(ap_done),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFBF0)) 
    auto_restart_status_i_1
       (.I0(ap_start),
        .I1(Q),
        .I2(p_0_in[7]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg_i_1
       (.I0(ap_start),
        .I1(Q),
        .I2(ap_done_reg1),
        .I3(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .O(int_ap_start_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    histo_Rst_B_INST_0
       (.I0(ap_rst_n),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_0_in[2]),
        .R(ap_rst_n_0));
  LUT6 #(
    .INIT(64'h7FFF7F7F00FF0000)) 
    int_ap_ready_i_1
       (.I0(\rdata[0]_i_3_n_0 ),
        .I1(s_axi_ctrl_bus_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(p_0_in[7]),
        .I4(ap_done),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_0_in[7]),
        .I1(ap_done),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_ctrl_bus_WDATA[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[5]_i_2_n_0 ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_ctrl_bus_WDATA[6]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[5]_i_2_n_0 ),
        .I4(p_0_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_0_in[7]),
        .R(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_ctrl_bus_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[5]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \int_ier[5]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[5]_i_2_n_0 ),
        .O(int_ier12_out));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_ier[5]_i_2 
       (.I0(s_axi_ctrl_bus_WSTRB),
        .I1(s_axi_ctrl_bus_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[0] ),
        .O(\int_ier[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_ctrl_bus_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_ctrl_bus_WDATA[1]),
        .Q(p_0_in6_in),
        .R(ap_rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[2] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_ctrl_bus_WDATA[2]),
        .Q(\int_ier_reg_n_0_[2] ),
        .R(ap_rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[3] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_ctrl_bus_WDATA[3]),
        .Q(\int_ier_reg_n_0_[3] ),
        .R(ap_rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[4] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_ctrl_bus_WDATA[4]),
        .Q(\int_ier_reg_n_0_[4] ),
        .R(ap_rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[5] 
       (.C(ap_clk),
        .CE(int_ier12_out),
        .D(s_axi_ctrl_bus_WDATA[5]),
        .Q(p_0_in__0),
        .R(ap_rst_n_0));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_ctrl_bus_WDATA[0]),
        .I1(int_isr9_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_ier[5]_i_2_n_0 ),
        .O(int_isr9_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_ctrl_bus_WDATA[1]),
        .I1(int_isr9_out),
        .I2(p_0_in6_in),
        .I3(ap_done),
        .I4(p_1_in1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \int_isr[5]_i_1 
       (.I0(s_axi_ctrl_bus_WDATA[5]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[5]_i_2_n_0 ),
        .I4(\int_isr_reg_n_0_[5] ),
        .O(\int_isr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in1_in),
        .R(ap_rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[5]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[5] ),
        .R(ap_rst_n_0));
  LUT6 #(
    .INIT(64'hFFFF77F7FFFF00F0)) 
    int_task_ap_done_i_1
       (.I0(\rdata[0]_i_3_n_0 ),
        .I1(ar_hs),
        .I2(ap_done),
        .I3(auto_restart_status_reg_n_0),
        .I4(int_task_ap_done_i_2_n_0),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_task_ap_done_i_2
       (.I0(Q),
        .I1(auto_restart_status_reg_n_0),
        .I2(p_0_in[2]),
        .I3(ap_start),
        .O(int_task_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_0));
  LUT4 #(
    .INIT(16'hFE00)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[5] ),
        .I1(p_1_in1_in),
        .I2(\int_isr_reg_n_0_[0] ),
        .I3(int_gie_reg_n_0),
        .O(interrupt));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rdata[0]_i_1 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(\rdata[0]_i_2_n_0 ),
        .I2(\rdata[0]_i_3_n_0 ),
        .I3(ap_start),
        .I4(\rdata[0]_i_4_n_0 ),
        .O(rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \rdata[0]_i_2 
       (.I0(s_axi_ctrl_bus_ARADDR[2]),
        .I1(s_axi_ctrl_bus_ARADDR[0]),
        .I2(s_axi_ctrl_bus_ARADDR[1]),
        .I3(s_axi_ctrl_bus_ARADDR[3]),
        .O(\rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[0]_i_3 
       (.I0(s_axi_ctrl_bus_ARADDR[2]),
        .I1(s_axi_ctrl_bus_ARADDR[0]),
        .I2(s_axi_ctrl_bus_ARADDR[1]),
        .I3(s_axi_ctrl_bus_ARADDR[3]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0300020000000200)) 
    \rdata[0]_i_4 
       (.I0(int_gie_reg_n_0),
        .I1(s_axi_ctrl_bus_ARADDR[1]),
        .I2(s_axi_ctrl_bus_ARADDR[0]),
        .I3(s_axi_ctrl_bus_ARADDR[2]),
        .I4(s_axi_ctrl_bus_ARADDR[3]),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC0AF0000C0A00000)) 
    \rdata[1]_i_1 
       (.I0(p_0_in6_in),
        .I1(p_1_in1_in),
        .I2(s_axi_ctrl_bus_ARADDR[3]),
        .I3(s_axi_ctrl_bus_ARADDR[2]),
        .I4(\rdata[1]_i_2_n_0 ),
        .I5(int_task_ap_done),
        .O(rdata[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[1]_i_2 
       (.I0(s_axi_ctrl_bus_ARADDR[0]),
        .I1(s_axi_ctrl_bus_ARADDR[1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \rdata[2]_i_1 
       (.I0(\int_ier_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(s_axi_ctrl_bus_ARADDR[2]),
        .I3(s_axi_ctrl_bus_ARADDR[0]),
        .I4(s_axi_ctrl_bus_ARADDR[1]),
        .I5(s_axi_ctrl_bus_ARADDR[3]),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \rdata[3]_i_1 
       (.I0(\int_ier_reg_n_0_[3] ),
        .I1(int_ap_ready),
        .I2(s_axi_ctrl_bus_ARADDR[2]),
        .I3(s_axi_ctrl_bus_ARADDR[0]),
        .I4(s_axi_ctrl_bus_ARADDR[1]),
        .I5(s_axi_ctrl_bus_ARADDR[3]),
        .O(rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \rdata[4]_i_1 
       (.I0(s_axi_ctrl_bus_ARADDR[3]),
        .I1(s_axi_ctrl_bus_ARADDR[1]),
        .I2(s_axi_ctrl_bus_ARADDR[0]),
        .I3(s_axi_ctrl_bus_ARADDR[2]),
        .I4(\int_ier_reg_n_0_[4] ),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'h000000AC00000000)) 
    \rdata[5]_i_1 
       (.I0(\int_isr_reg_n_0_[5] ),
        .I1(p_0_in__0),
        .I2(s_axi_ctrl_bus_ARADDR[2]),
        .I3(s_axi_ctrl_bus_ARADDR[0]),
        .I4(s_axi_ctrl_bus_ARADDR[1]),
        .I5(s_axi_ctrl_bus_ARADDR[3]),
        .O(rdata[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[7]_i_1 
       (.I0(s_axi_ctrl_bus_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \rdata[7]_i_2 
       (.I0(s_axi_ctrl_bus_ARADDR[3]),
        .I1(s_axi_ctrl_bus_ARADDR[1]),
        .I2(s_axi_ctrl_bus_ARADDR[0]),
        .I3(s_axi_ctrl_bus_ARADDR[2]),
        .I4(p_0_in[7]),
        .O(rdata[7]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_ctrl_bus_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_ctrl_bus_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_ctrl_bus_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_ctrl_bus_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_ctrl_bus_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_ctrl_bus_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_ctrl_bus_RDATA[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(s_axi_ctrl_bus_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_bus_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "doHist_doHist_Pipeline_VITIS_LOOP_12_1" *) 
module design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_12_1
   (D,
    E,
    ap_done_reg1,
    histo_Addr_A,
    ap_done_cache_reg,
    ap_clk,
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
    Q,
    ap_start,
    ap_rst_n,
    \histo_Addr_A[9] );
  output [1:0]D;
  output [0:0]E;
  output ap_done_reg1;
  output [8:0]histo_Addr_A;
  input ap_done_cache_reg;
  input ap_clk;
  input grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  input [2:0]Q;
  input ap_start;
  input ap_rst_n;
  input [7:0]\histo_Addr_A[9] ;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire ap_clk;
  wire ap_done_cache_reg;
  wire ap_done_reg1;
  wire ap_rst_n;
  wire ap_start;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  wire [8:0]histo_Addr_A;
  wire [7:0]\histo_Addr_A[9] ;
  wire \idxHist_fu_32[5]_i_2_n_0 ;
  wire \idxHist_fu_32[6]_i_2_n_0 ;
  wire \idxHist_fu_32[8]_i_2_n_0 ;
  wire \idxHist_fu_32[8]_i_3_n_0 ;
  wire \idxHist_fu_32_reg_n_0_[0] ;
  wire \idxHist_fu_32_reg_n_0_[1] ;
  wire \idxHist_fu_32_reg_n_0_[2] ;
  wire \idxHist_fu_32_reg_n_0_[3] ;
  wire \idxHist_fu_32_reg_n_0_[4] ;
  wire \idxHist_fu_32_reg_n_0_[5] ;
  wire \idxHist_fu_32_reg_n_0_[6] ;
  wire \idxHist_fu_32_reg_n_0_[7] ;
  wire \idxHist_fu_32_reg_n_0_[8] ;
  wire [8:0]p_0_in;

  design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.D(p_0_in),
        .E(E),
        .Q({\idxHist_fu_32_reg_n_0_[8] ,\idxHist_fu_32_reg_n_0_[7] ,\idxHist_fu_32_reg_n_0_[6] ,\idxHist_fu_32_reg_n_0_[5] ,\idxHist_fu_32_reg_n_0_[4] ,\idxHist_fu_32_reg_n_0_[3] ,\idxHist_fu_32_reg_n_0_[2] ,\idxHist_fu_32_reg_n_0_[1] ,\idxHist_fu_32_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[1] (D),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(ap_done_cache_reg),
        .ap_loop_init_int_reg_0(ap_done_reg1),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .histo_Addr_A(histo_Addr_A),
        .\histo_Addr_A[3] (Q),
        .\histo_Addr_A[9] (\histo_Addr_A[9] ),
        .\idxHist_fu_32_reg[5] (\idxHist_fu_32[5]_i_2_n_0 ),
        .\idxHist_fu_32_reg[6] (flow_control_loop_pipe_sequential_init_U_n_12),
        .\idxHist_fu_32_reg[6]_0 (\idxHist_fu_32[6]_i_2_n_0 ),
        .\idxHist_fu_32_reg[8] (\idxHist_fu_32[8]_i_2_n_0 ),
        .\idxHist_fu_32_reg[8]_0 (\idxHist_fu_32[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \idxHist_fu_32[5]_i_2 
       (.I0(\idxHist_fu_32_reg_n_0_[3] ),
        .I1(\idxHist_fu_32_reg_n_0_[0] ),
        .I2(\idxHist_fu_32_reg_n_0_[2] ),
        .I3(\idxHist_fu_32_reg_n_0_[4] ),
        .O(\idxHist_fu_32[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \idxHist_fu_32[6]_i_2 
       (.I0(\idxHist_fu_32_reg_n_0_[4] ),
        .I1(\idxHist_fu_32_reg_n_0_[2] ),
        .I2(\idxHist_fu_32_reg_n_0_[0] ),
        .I3(\idxHist_fu_32_reg_n_0_[3] ),
        .I4(\idxHist_fu_32_reg_n_0_[5] ),
        .O(\idxHist_fu_32[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \idxHist_fu_32[8]_i_2 
       (.I0(\idxHist_fu_32_reg_n_0_[5] ),
        .I1(\idxHist_fu_32_reg_n_0_[3] ),
        .I2(\idxHist_fu_32_reg_n_0_[0] ),
        .I3(\idxHist_fu_32_reg_n_0_[2] ),
        .I4(\idxHist_fu_32_reg_n_0_[4] ),
        .I5(\idxHist_fu_32_reg_n_0_[6] ),
        .O(\idxHist_fu_32[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \idxHist_fu_32[8]_i_3 
       (.I0(flow_control_loop_pipe_sequential_init_U_n_12),
        .I1(\idxHist_fu_32_reg_n_0_[0] ),
        .O(\idxHist_fu_32[8]_i_3_n_0 ));
  FDRE \idxHist_fu_32_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(\idxHist_fu_32_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(\idxHist_fu_32_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(\idxHist_fu_32_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(\idxHist_fu_32_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(\idxHist_fu_32_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[5]),
        .Q(\idxHist_fu_32_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[6]),
        .Q(\idxHist_fu_32_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[7]),
        .Q(\idxHist_fu_32_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \idxHist_fu_32_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(p_0_in[8]),
        .Q(\idxHist_fu_32_reg_n_0_[8] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "doHist_doHist_Pipeline_VITIS_LOOP_19_2" *) 
module design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_19_2
   (histo_WEN_A,
    D,
    histo_EN_B,
    B_V_data_1_state,
    \icmp_ln19_reg_202_reg[0]_0 ,
    histo_EN_A,
    ap_done,
    \reuse_addr_reg_fu_56_reg[0]_0 ,
    \reuse_addr_reg_fu_56_reg[0]_1 ,
    \reuse_addr_reg_fu_56_reg[3]_0 ,
    \reuse_addr_reg_fu_56_reg[3]_1 ,
    \reuse_addr_reg_fu_56_reg[8]_0 ,
    \ap_CS_fsm_reg[2] ,
    \icmp_ln19_reg_202_reg[0]_1 ,
    histo_Din_A,
    \histo_addr_reg_206_reg[7]_0 ,
    \reuse_addr_reg_fu_56_reg[7]_0 ,
    \reuse_addr_reg_fu_56_reg[6]_0 ,
    \reuse_addr_reg_fu_56_reg[5]_0 ,
    \reuse_addr_reg_fu_56_reg[2]_0 ,
    ap_clk,
    ap_done_cache_reg,
    S,
    ap_rst_n,
    inStream_TVALID_int_regslice,
    E,
    Q,
    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
    inStream_TVALID,
    \B_V_data_1_state_reg[1] ,
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
    addr_cmp_fu_150_p2_carry_i_3,
    addr_cmp_fu_150_p2_carry_i_3_0,
    B_V_data_1_sel,
    histo_Addr_B,
    histo_Dout_B);
  output [0:0]histo_WEN_A;
  output [0:0]D;
  output histo_EN_B;
  output [0:0]B_V_data_1_state;
  output \icmp_ln19_reg_202_reg[0]_0 ;
  output histo_EN_A;
  output ap_done;
  output \reuse_addr_reg_fu_56_reg[0]_0 ;
  output \reuse_addr_reg_fu_56_reg[0]_1 ;
  output \reuse_addr_reg_fu_56_reg[3]_0 ;
  output \reuse_addr_reg_fu_56_reg[3]_1 ;
  output \reuse_addr_reg_fu_56_reg[8]_0 ;
  output \ap_CS_fsm_reg[2] ;
  output \icmp_ln19_reg_202_reg[0]_1 ;
  output [31:0]histo_Din_A;
  output [7:0]\histo_addr_reg_206_reg[7]_0 ;
  output \reuse_addr_reg_fu_56_reg[7]_0 ;
  output \reuse_addr_reg_fu_56_reg[6]_0 ;
  output \reuse_addr_reg_fu_56_reg[5]_0 ;
  output \reuse_addr_reg_fu_56_reg[2]_0 ;
  input ap_clk;
  input ap_done_cache_reg;
  input [2:0]S;
  input ap_rst_n;
  input inStream_TVALID_int_regslice;
  input [0:0]E;
  input [2:0]Q;
  input grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg;
  input inStream_TVALID;
  input \B_V_data_1_state_reg[1] ;
  input grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  input [3:0]addr_cmp_fu_150_p2_carry_i_3;
  input [3:0]addr_cmp_fu_150_p2_carry_i_3_0;
  input B_V_data_1_sel;
  input [7:0]histo_Addr_B;
  input [31:0]histo_Dout_B;

  wire B_V_data_1_sel;
  wire [0:0]B_V_data_1_state;
  wire \B_V_data_1_state[1]_i_2_n_0 ;
  wire \B_V_data_1_state_reg[1] ;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [2:0]S;
  wire [31:0]add_ln26_fu_171_p2;
  wire add_ln26_fu_171_p2_carry__0_n_0;
  wire add_ln26_fu_171_p2_carry__0_n_1;
  wire add_ln26_fu_171_p2_carry__0_n_2;
  wire add_ln26_fu_171_p2_carry__0_n_3;
  wire add_ln26_fu_171_p2_carry__1_n_0;
  wire add_ln26_fu_171_p2_carry__1_n_1;
  wire add_ln26_fu_171_p2_carry__1_n_2;
  wire add_ln26_fu_171_p2_carry__1_n_3;
  wire add_ln26_fu_171_p2_carry__2_n_0;
  wire add_ln26_fu_171_p2_carry__2_n_1;
  wire add_ln26_fu_171_p2_carry__2_n_2;
  wire add_ln26_fu_171_p2_carry__2_n_3;
  wire add_ln26_fu_171_p2_carry__3_n_0;
  wire add_ln26_fu_171_p2_carry__3_n_1;
  wire add_ln26_fu_171_p2_carry__3_n_2;
  wire add_ln26_fu_171_p2_carry__3_n_3;
  wire add_ln26_fu_171_p2_carry__4_n_0;
  wire add_ln26_fu_171_p2_carry__4_n_1;
  wire add_ln26_fu_171_p2_carry__4_n_2;
  wire add_ln26_fu_171_p2_carry__4_n_3;
  wire add_ln26_fu_171_p2_carry__5_n_0;
  wire add_ln26_fu_171_p2_carry__5_n_1;
  wire add_ln26_fu_171_p2_carry__5_n_2;
  wire add_ln26_fu_171_p2_carry__5_n_3;
  wire add_ln26_fu_171_p2_carry__6_n_2;
  wire add_ln26_fu_171_p2_carry__6_n_3;
  wire add_ln26_fu_171_p2_carry_n_0;
  wire add_ln26_fu_171_p2_carry_n_1;
  wire add_ln26_fu_171_p2_carry_n_2;
  wire add_ln26_fu_171_p2_carry_n_3;
  wire [31:0]add_ln26_reg_217;
  wire addr_cmp_fu_150_p2;
  wire addr_cmp_fu_150_p2_carry__0_i_1_n_0;
  wire addr_cmp_fu_150_p2_carry__0_i_2_n_0;
  wire addr_cmp_fu_150_p2_carry__0_i_3_n_0;
  wire addr_cmp_fu_150_p2_carry__0_i_4_n_0;
  wire addr_cmp_fu_150_p2_carry__0_n_0;
  wire addr_cmp_fu_150_p2_carry__0_n_1;
  wire addr_cmp_fu_150_p2_carry__0_n_2;
  wire addr_cmp_fu_150_p2_carry__0_n_3;
  wire addr_cmp_fu_150_p2_carry__1_i_1_n_0;
  wire addr_cmp_fu_150_p2_carry__1_i_2_n_0;
  wire addr_cmp_fu_150_p2_carry__1_i_3_n_0;
  wire addr_cmp_fu_150_p2_carry__1_i_4_n_0;
  wire addr_cmp_fu_150_p2_carry__1_n_0;
  wire addr_cmp_fu_150_p2_carry__1_n_1;
  wire addr_cmp_fu_150_p2_carry__1_n_2;
  wire addr_cmp_fu_150_p2_carry__1_n_3;
  wire addr_cmp_fu_150_p2_carry__2_i_1_n_0;
  wire addr_cmp_fu_150_p2_carry__2_i_2_n_0;
  wire addr_cmp_fu_150_p2_carry__2_i_3_n_0;
  wire addr_cmp_fu_150_p2_carry__2_i_4_n_0;
  wire addr_cmp_fu_150_p2_carry__2_n_0;
  wire addr_cmp_fu_150_p2_carry__2_n_1;
  wire addr_cmp_fu_150_p2_carry__2_n_2;
  wire addr_cmp_fu_150_p2_carry__2_n_3;
  wire addr_cmp_fu_150_p2_carry__3_i_1_n_0;
  wire addr_cmp_fu_150_p2_carry__3_i_2_n_0;
  wire addr_cmp_fu_150_p2_carry__3_i_3_n_0;
  wire addr_cmp_fu_150_p2_carry__3_i_4_n_0;
  wire addr_cmp_fu_150_p2_carry__3_n_0;
  wire addr_cmp_fu_150_p2_carry__3_n_1;
  wire addr_cmp_fu_150_p2_carry__3_n_2;
  wire addr_cmp_fu_150_p2_carry__3_n_3;
  wire addr_cmp_fu_150_p2_carry__4_i_1_n_0;
  wire addr_cmp_fu_150_p2_carry__4_i_2_n_0;
  wire addr_cmp_fu_150_p2_carry__4_n_3;
  wire addr_cmp_fu_150_p2_carry_i_1_n_0;
  wire [3:0]addr_cmp_fu_150_p2_carry_i_3;
  wire [3:0]addr_cmp_fu_150_p2_carry_i_3_0;
  wire addr_cmp_fu_150_p2_carry_n_0;
  wire addr_cmp_fu_150_p2_carry_n_1;
  wire addr_cmp_fu_150_p2_carry_n_2;
  wire addr_cmp_fu_150_p2_carry_n_3;
  wire addr_cmp_reg_212;
  wire addr_cmp_reg_2120;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg[2] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_done_cache_reg;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_loop_init_int;
  wire ap_rst_n;
  wire [16:0]ap_sig_allocacmp_idxPixel_1;
  wire ap_sig_allocacmp_idxPixel_11;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg;
  wire [0:0]grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A;
  wire [7:0]histo_Addr_B;
  wire [31:0]histo_Din_A;
  wire [31:0]histo_Dout_B;
  wire histo_EN_A;
  wire histo_EN_B;
  wire [0:0]histo_WEN_A;
  wire [7:0]\histo_addr_reg_206_reg[7]_0 ;
  wire icmp_ln19_fu_121_p2;
  wire \icmp_ln19_reg_202_reg[0]_0 ;
  wire \icmp_ln19_reg_202_reg[0]_1 ;
  wire \icmp_ln19_reg_202_reg_n_0_[0] ;
  wire [16:0]idxPixel_2_fu_127_p2;
  wire idxPixel_2_fu_127_p2_carry__0_n_0;
  wire idxPixel_2_fu_127_p2_carry__0_n_1;
  wire idxPixel_2_fu_127_p2_carry__0_n_2;
  wire idxPixel_2_fu_127_p2_carry__0_n_3;
  wire idxPixel_2_fu_127_p2_carry__1_n_0;
  wire idxPixel_2_fu_127_p2_carry__1_n_1;
  wire idxPixel_2_fu_127_p2_carry__1_n_2;
  wire idxPixel_2_fu_127_p2_carry__1_n_3;
  wire idxPixel_2_fu_127_p2_carry__2_n_1;
  wire idxPixel_2_fu_127_p2_carry__2_n_2;
  wire idxPixel_2_fu_127_p2_carry__2_n_3;
  wire idxPixel_2_fu_127_p2_carry_n_0;
  wire idxPixel_2_fu_127_p2_carry_n_1;
  wire idxPixel_2_fu_127_p2_carry_n_2;
  wire idxPixel_2_fu_127_p2_carry_n_3;
  wire idxPixel_fu_64;
  wire \idxPixel_fu_64[16]_i_2_n_0 ;
  wire \idxPixel_fu_64[16]_i_3_n_0 ;
  wire \idxPixel_fu_64[16]_i_4_n_0 ;
  wire \idxPixel_fu_64[16]_i_5_n_0 ;
  wire \idxPixel_fu_64_reg_n_0_[0] ;
  wire \idxPixel_fu_64_reg_n_0_[10] ;
  wire \idxPixel_fu_64_reg_n_0_[11] ;
  wire \idxPixel_fu_64_reg_n_0_[12] ;
  wire \idxPixel_fu_64_reg_n_0_[13] ;
  wire \idxPixel_fu_64_reg_n_0_[14] ;
  wire \idxPixel_fu_64_reg_n_0_[15] ;
  wire \idxPixel_fu_64_reg_n_0_[16] ;
  wire \idxPixel_fu_64_reg_n_0_[1] ;
  wire \idxPixel_fu_64_reg_n_0_[2] ;
  wire \idxPixel_fu_64_reg_n_0_[3] ;
  wire \idxPixel_fu_64_reg_n_0_[4] ;
  wire \idxPixel_fu_64_reg_n_0_[5] ;
  wire \idxPixel_fu_64_reg_n_0_[6] ;
  wire \idxPixel_fu_64_reg_n_0_[7] ;
  wire \idxPixel_fu_64_reg_n_0_[8] ;
  wire \idxPixel_fu_64_reg_n_0_[9] ;
  wire inStream_TVALID;
  wire inStream_TVALID_int_regslice;
  wire \reuse_addr_reg_fu_56[8]_i_1_n_0 ;
  wire \reuse_addr_reg_fu_56_reg[0]_0 ;
  wire \reuse_addr_reg_fu_56_reg[0]_1 ;
  wire \reuse_addr_reg_fu_56_reg[2]_0 ;
  wire \reuse_addr_reg_fu_56_reg[3]_0 ;
  wire \reuse_addr_reg_fu_56_reg[3]_1 ;
  wire \reuse_addr_reg_fu_56_reg[5]_0 ;
  wire \reuse_addr_reg_fu_56_reg[6]_0 ;
  wire \reuse_addr_reg_fu_56_reg[7]_0 ;
  wire \reuse_addr_reg_fu_56_reg[8]_0 ;
  wire \reuse_addr_reg_fu_56_reg_n_0_[0] ;
  wire \reuse_addr_reg_fu_56_reg_n_0_[1] ;
  wire \reuse_addr_reg_fu_56_reg_n_0_[3] ;
  wire \reuse_addr_reg_fu_56_reg_n_0_[4] ;
  wire [31:0]reuse_reg_fu_60;
  wire [31:0]reuse_select_fu_164_p3;
  wire [3:2]NLW_add_ln26_fu_171_p2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_add_ln26_fu_171_p2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_150_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_150_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_150_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_150_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_150_p2_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_addr_cmp_fu_150_p2_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_addr_cmp_fu_150_p2_carry__4_O_UNCONNECTED;
  wire [3:3]NLW_idxPixel_2_fu_127_p2_carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    B_V_data_1_sel_rd_i_1
       (.I0(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(Q[2]),
        .I4(inStream_TVALID_int_regslice),
        .I5(B_V_data_1_sel),
        .O(\icmp_ln19_reg_202_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hABFBFFFFFFFFFFFF)) 
    \B_V_data_1_state[0]_i_2 
       (.I0(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(Q[2]),
        .O(\icmp_ln19_reg_202_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h10FFFFFF10FF10FF)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I1(\B_V_data_1_state[1]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(inStream_TVALID_int_regslice),
        .I4(inStream_TVALID),
        .I5(\B_V_data_1_state_reg[1] ),
        .O(B_V_data_1_state));
  LUT4 #(
    .INIT(16'h1DFF)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(\B_V_data_1_state[1]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry
       (.CI(1'b0),
        .CO({add_ln26_fu_171_p2_carry_n_0,add_ln26_fu_171_p2_carry_n_1,add_ln26_fu_171_p2_carry_n_2,add_ln26_fu_171_p2_carry_n_3}),
        .CYINIT(reuse_select_fu_164_p3[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln26_fu_171_p2[4:1]),
        .S(reuse_select_fu_164_p3[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry__0
       (.CI(add_ln26_fu_171_p2_carry_n_0),
        .CO({add_ln26_fu_171_p2_carry__0_n_0,add_ln26_fu_171_p2_carry__0_n_1,add_ln26_fu_171_p2_carry__0_n_2,add_ln26_fu_171_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln26_fu_171_p2[8:5]),
        .S(reuse_select_fu_164_p3[8:5]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__0_i_1
       (.I0(reuse_reg_fu_60[8]),
        .I1(histo_Dout_B[8]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__0_i_2
       (.I0(reuse_reg_fu_60[7]),
        .I1(histo_Dout_B[7]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__0_i_3
       (.I0(reuse_reg_fu_60[6]),
        .I1(histo_Dout_B[6]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__0_i_4
       (.I0(reuse_reg_fu_60[5]),
        .I1(histo_Dout_B[5]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry__1
       (.CI(add_ln26_fu_171_p2_carry__0_n_0),
        .CO({add_ln26_fu_171_p2_carry__1_n_0,add_ln26_fu_171_p2_carry__1_n_1,add_ln26_fu_171_p2_carry__1_n_2,add_ln26_fu_171_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln26_fu_171_p2[12:9]),
        .S(reuse_select_fu_164_p3[12:9]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__1_i_1
       (.I0(reuse_reg_fu_60[12]),
        .I1(histo_Dout_B[12]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__1_i_2
       (.I0(reuse_reg_fu_60[11]),
        .I1(histo_Dout_B[11]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__1_i_3
       (.I0(reuse_reg_fu_60[10]),
        .I1(histo_Dout_B[10]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__1_i_4
       (.I0(reuse_reg_fu_60[9]),
        .I1(histo_Dout_B[9]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry__2
       (.CI(add_ln26_fu_171_p2_carry__1_n_0),
        .CO({add_ln26_fu_171_p2_carry__2_n_0,add_ln26_fu_171_p2_carry__2_n_1,add_ln26_fu_171_p2_carry__2_n_2,add_ln26_fu_171_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln26_fu_171_p2[16:13]),
        .S(reuse_select_fu_164_p3[16:13]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__2_i_1
       (.I0(reuse_reg_fu_60[16]),
        .I1(histo_Dout_B[16]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__2_i_2
       (.I0(reuse_reg_fu_60[15]),
        .I1(histo_Dout_B[15]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__2_i_3
       (.I0(reuse_reg_fu_60[14]),
        .I1(histo_Dout_B[14]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__2_i_4
       (.I0(reuse_reg_fu_60[13]),
        .I1(histo_Dout_B[13]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry__3
       (.CI(add_ln26_fu_171_p2_carry__2_n_0),
        .CO({add_ln26_fu_171_p2_carry__3_n_0,add_ln26_fu_171_p2_carry__3_n_1,add_ln26_fu_171_p2_carry__3_n_2,add_ln26_fu_171_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln26_fu_171_p2[20:17]),
        .S(reuse_select_fu_164_p3[20:17]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__3_i_1
       (.I0(reuse_reg_fu_60[20]),
        .I1(histo_Dout_B[20]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__3_i_2
       (.I0(reuse_reg_fu_60[19]),
        .I1(histo_Dout_B[19]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__3_i_3
       (.I0(reuse_reg_fu_60[18]),
        .I1(histo_Dout_B[18]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__3_i_4
       (.I0(reuse_reg_fu_60[17]),
        .I1(histo_Dout_B[17]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry__4
       (.CI(add_ln26_fu_171_p2_carry__3_n_0),
        .CO({add_ln26_fu_171_p2_carry__4_n_0,add_ln26_fu_171_p2_carry__4_n_1,add_ln26_fu_171_p2_carry__4_n_2,add_ln26_fu_171_p2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln26_fu_171_p2[24:21]),
        .S(reuse_select_fu_164_p3[24:21]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__4_i_1
       (.I0(reuse_reg_fu_60[24]),
        .I1(histo_Dout_B[24]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__4_i_2
       (.I0(reuse_reg_fu_60[23]),
        .I1(histo_Dout_B[23]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__4_i_3
       (.I0(reuse_reg_fu_60[22]),
        .I1(histo_Dout_B[22]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__4_i_4
       (.I0(reuse_reg_fu_60[21]),
        .I1(histo_Dout_B[21]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry__5
       (.CI(add_ln26_fu_171_p2_carry__4_n_0),
        .CO({add_ln26_fu_171_p2_carry__5_n_0,add_ln26_fu_171_p2_carry__5_n_1,add_ln26_fu_171_p2_carry__5_n_2,add_ln26_fu_171_p2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln26_fu_171_p2[28:25]),
        .S(reuse_select_fu_164_p3[28:25]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__5_i_1
       (.I0(reuse_reg_fu_60[28]),
        .I1(histo_Dout_B[28]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__5_i_2
       (.I0(reuse_reg_fu_60[27]),
        .I1(histo_Dout_B[27]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__5_i_3
       (.I0(reuse_reg_fu_60[26]),
        .I1(histo_Dout_B[26]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__5_i_4
       (.I0(reuse_reg_fu_60[25]),
        .I1(histo_Dout_B[25]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_ln26_fu_171_p2_carry__6
       (.CI(add_ln26_fu_171_p2_carry__5_n_0),
        .CO({NLW_add_ln26_fu_171_p2_carry__6_CO_UNCONNECTED[3:2],add_ln26_fu_171_p2_carry__6_n_2,add_ln26_fu_171_p2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_add_ln26_fu_171_p2_carry__6_O_UNCONNECTED[3],add_ln26_fu_171_p2[31:29]}),
        .S({1'b0,reuse_select_fu_164_p3[31:29]}));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__6_i_1
       (.I0(reuse_reg_fu_60[31]),
        .I1(histo_Dout_B[31]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__6_i_2
       (.I0(reuse_reg_fu_60[30]),
        .I1(histo_Dout_B[30]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry__6_i_3
       (.I0(reuse_reg_fu_60[29]),
        .I1(histo_Dout_B[29]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry_i_1
       (.I0(reuse_reg_fu_60[0]),
        .I1(histo_Dout_B[0]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry_i_2
       (.I0(reuse_reg_fu_60[4]),
        .I1(histo_Dout_B[4]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry_i_3
       (.I0(reuse_reg_fu_60[3]),
        .I1(histo_Dout_B[3]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry_i_4
       (.I0(reuse_reg_fu_60[2]),
        .I1(histo_Dout_B[2]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    add_ln26_fu_171_p2_carry_i_5
       (.I0(reuse_reg_fu_60[1]),
        .I1(histo_Dout_B[1]),
        .I2(addr_cmp_reg_212),
        .O(reuse_select_fu_164_p3[1]));
  LUT3 #(
    .INIT(8'h1B)) 
    \add_ln26_reg_217[0]_i_1 
       (.I0(addr_cmp_reg_212),
        .I1(histo_Dout_B[0]),
        .I2(reuse_reg_fu_60[0]),
        .O(add_ln26_fu_171_p2[0]));
  FDRE \add_ln26_reg_217_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[0]),
        .Q(add_ln26_reg_217[0]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[10]),
        .Q(add_ln26_reg_217[10]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[11]),
        .Q(add_ln26_reg_217[11]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[12]),
        .Q(add_ln26_reg_217[12]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[13]),
        .Q(add_ln26_reg_217[13]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[14]),
        .Q(add_ln26_reg_217[14]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[15]),
        .Q(add_ln26_reg_217[15]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[16]),
        .Q(add_ln26_reg_217[16]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[17]),
        .Q(add_ln26_reg_217[17]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[18]),
        .Q(add_ln26_reg_217[18]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[19]),
        .Q(add_ln26_reg_217[19]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[1]),
        .Q(add_ln26_reg_217[1]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[20]),
        .Q(add_ln26_reg_217[20]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[21]),
        .Q(add_ln26_reg_217[21]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[22]),
        .Q(add_ln26_reg_217[22]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[23]),
        .Q(add_ln26_reg_217[23]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[24]),
        .Q(add_ln26_reg_217[24]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[25]),
        .Q(add_ln26_reg_217[25]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[26]),
        .Q(add_ln26_reg_217[26]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[27]),
        .Q(add_ln26_reg_217[27]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[28]),
        .Q(add_ln26_reg_217[28]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[29]),
        .Q(add_ln26_reg_217[29]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[2]),
        .Q(add_ln26_reg_217[2]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[30]),
        .Q(add_ln26_reg_217[30]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[31]),
        .Q(add_ln26_reg_217[31]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[3]),
        .Q(add_ln26_reg_217[3]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[4]),
        .Q(add_ln26_reg_217[4]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[5]),
        .Q(add_ln26_reg_217[5]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[6]),
        .Q(add_ln26_reg_217[6]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[7]),
        .Q(add_ln26_reg_217[7]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[8]),
        .Q(add_ln26_reg_217[8]),
        .R(1'b0));
  FDRE \add_ln26_reg_217_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln26_fu_171_p2[9]),
        .Q(add_ln26_reg_217[9]),
        .R(1'b0));
  CARRY4 addr_cmp_fu_150_p2_carry
       (.CI(1'b0),
        .CO({addr_cmp_fu_150_p2_carry_n_0,addr_cmp_fu_150_p2_carry_n_1,addr_cmp_fu_150_p2_carry_n_2,addr_cmp_fu_150_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_150_p2_carry_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_150_p2_carry_i_1_n_0,S}));
  CARRY4 addr_cmp_fu_150_p2_carry__0
       (.CI(addr_cmp_fu_150_p2_carry_n_0),
        .CO({addr_cmp_fu_150_p2_carry__0_n_0,addr_cmp_fu_150_p2_carry__0_n_1,addr_cmp_fu_150_p2_carry__0_n_2,addr_cmp_fu_150_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_150_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_150_p2_carry__0_i_1_n_0,addr_cmp_fu_150_p2_carry__0_i_2_n_0,addr_cmp_fu_150_p2_carry__0_i_3_n_0,addr_cmp_fu_150_p2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__0_i_1
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__0_i_2
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__0_i_3
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__0_i_4
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__0_i_4_n_0));
  CARRY4 addr_cmp_fu_150_p2_carry__1
       (.CI(addr_cmp_fu_150_p2_carry__0_n_0),
        .CO({addr_cmp_fu_150_p2_carry__1_n_0,addr_cmp_fu_150_p2_carry__1_n_1,addr_cmp_fu_150_p2_carry__1_n_2,addr_cmp_fu_150_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_150_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_150_p2_carry__1_i_1_n_0,addr_cmp_fu_150_p2_carry__1_i_2_n_0,addr_cmp_fu_150_p2_carry__1_i_3_n_0,addr_cmp_fu_150_p2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__1_i_1
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__1_i_2
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__1_i_3
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__1_i_4
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__1_i_4_n_0));
  CARRY4 addr_cmp_fu_150_p2_carry__2
       (.CI(addr_cmp_fu_150_p2_carry__1_n_0),
        .CO({addr_cmp_fu_150_p2_carry__2_n_0,addr_cmp_fu_150_p2_carry__2_n_1,addr_cmp_fu_150_p2_carry__2_n_2,addr_cmp_fu_150_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_150_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_150_p2_carry__2_i_1_n_0,addr_cmp_fu_150_p2_carry__2_i_2_n_0,addr_cmp_fu_150_p2_carry__2_i_3_n_0,addr_cmp_fu_150_p2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__2_i_1
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__2_i_2
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__2_i_3
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__2_i_4
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__2_i_4_n_0));
  CARRY4 addr_cmp_fu_150_p2_carry__3
       (.CI(addr_cmp_fu_150_p2_carry__2_n_0),
        .CO({addr_cmp_fu_150_p2_carry__3_n_0,addr_cmp_fu_150_p2_carry__3_n_1,addr_cmp_fu_150_p2_carry__3_n_2,addr_cmp_fu_150_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_150_p2_carry__3_O_UNCONNECTED[3:0]),
        .S({addr_cmp_fu_150_p2_carry__3_i_1_n_0,addr_cmp_fu_150_p2_carry__3_i_2_n_0,addr_cmp_fu_150_p2_carry__3_i_3_n_0,addr_cmp_fu_150_p2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__3_i_1
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__3_i_2
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__3_i_3
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__3_i_4
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__3_i_4_n_0));
  CARRY4 addr_cmp_fu_150_p2_carry__4
       (.CI(addr_cmp_fu_150_p2_carry__3_n_0),
        .CO({NLW_addr_cmp_fu_150_p2_carry__4_CO_UNCONNECTED[3:2],addr_cmp_fu_150_p2,addr_cmp_fu_150_p2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_cmp_fu_150_p2_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,addr_cmp_fu_150_p2_carry__4_i_1_n_0,addr_cmp_fu_150_p2_carry__4_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__4_i_1
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry__4_i_2
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    addr_cmp_fu_150_p2_carry_i_1
       (.I0(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(addr_cmp_fu_150_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_cmp_fu_150_p2_carry_i_10
       (.I0(\reuse_addr_reg_fu_56_reg_n_0_[0] ),
        .I1(addr_cmp_fu_150_p2_carry_i_3[0]),
        .I2(\reuse_addr_reg_fu_56_reg_n_0_[1] ),
        .I3(addr_cmp_fu_150_p2_carry_i_3[1]),
        .O(\reuse_addr_reg_fu_56_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_cmp_fu_150_p2_carry_i_7
       (.I0(\reuse_addr_reg_fu_56_reg_n_0_[3] ),
        .I1(addr_cmp_fu_150_p2_carry_i_3_0[2]),
        .I2(\reuse_addr_reg_fu_56_reg_n_0_[4] ),
        .I3(addr_cmp_fu_150_p2_carry_i_3_0[3]),
        .O(\reuse_addr_reg_fu_56_reg[3]_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_cmp_fu_150_p2_carry_i_8
       (.I0(\reuse_addr_reg_fu_56_reg_n_0_[3] ),
        .I1(addr_cmp_fu_150_p2_carry_i_3[2]),
        .I2(\reuse_addr_reg_fu_56_reg_n_0_[4] ),
        .I3(addr_cmp_fu_150_p2_carry_i_3[3]),
        .O(\reuse_addr_reg_fu_56_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_cmp_fu_150_p2_carry_i_9
       (.I0(\reuse_addr_reg_fu_56_reg_n_0_[0] ),
        .I1(addr_cmp_fu_150_p2_carry_i_3_0[0]),
        .I2(\reuse_addr_reg_fu_56_reg_n_0_[1] ),
        .I3(addr_cmp_fu_150_p2_carry_i_3_0[1]),
        .O(\reuse_addr_reg_fu_56_reg[0]_1 ));
  FDRE \addr_cmp_reg_212_reg[0] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(addr_cmp_fu_150_p2),
        .Q(addr_cmp_reg_212),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111FFF01111FFFF)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I3(inStream_TVALID_int_regslice),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(ap_enable_reg_pp0_iter0_reg),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hEEEE000FEEEE0000)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(inStream_TVALID_int_regslice),
        .I3(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(ap_enable_reg_pp0_iter0_reg),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_pp0_stage0),
        .S(ap_done_cache_reg));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_done_cache_reg));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_done_cache_reg));
  LUT6 #(
    .INIT(64'h00A80000A0A0A0A0)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(inStream_TVALID_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q[2:1]),
        .SR(ap_sig_allocacmp_idxPixel_11),
        .\ap_CS_fsm_reg[1] (flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_done_cache_reg_0(ap_done_cache_reg),
        .ap_done_cache_reg_1({ap_CS_fsm_pp0_stage1,ap_CS_fsm_pp0_stage0}),
        .ap_done_cache_reg_2(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_loop_init_int(ap_loop_init_int),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_26),
        .ap_rst_n(ap_rst_n),
        .ap_sig_allocacmp_idxPixel_1(ap_sig_allocacmp_idxPixel_1),
        .grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .icmp_ln19_fu_121_p2(icmp_ln19_fu_121_p2),
        .idxPixel_2_fu_127_p2(idxPixel_2_fu_127_p2[0]),
        .idxPixel_fu_64(idxPixel_fu_64),
        .\idxPixel_fu_64_reg[0] (\idxPixel_fu_64[16]_i_2_n_0 ),
        .\idxPixel_fu_64_reg[0]_0 (\idxPixel_fu_64[16]_i_3_n_0 ),
        .\idxPixel_fu_64_reg[0]_1 (\idxPixel_fu_64_reg_n_0_[0] ),
        .\idxPixel_fu_64_reg[12] (\idxPixel_fu_64_reg_n_0_[9] ),
        .\idxPixel_fu_64_reg[12]_0 (\idxPixel_fu_64_reg_n_0_[10] ),
        .\idxPixel_fu_64_reg[12]_1 (\idxPixel_fu_64_reg_n_0_[11] ),
        .\idxPixel_fu_64_reg[12]_2 (\idxPixel_fu_64_reg_n_0_[12] ),
        .\idxPixel_fu_64_reg[16] (\idxPixel_fu_64_reg_n_0_[13] ),
        .\idxPixel_fu_64_reg[16]_0 (\idxPixel_fu_64_reg_n_0_[14] ),
        .\idxPixel_fu_64_reg[16]_1 (\idxPixel_fu_64_reg_n_0_[15] ),
        .\idxPixel_fu_64_reg[16]_2 (\idxPixel_fu_64_reg_n_0_[16] ),
        .\idxPixel_fu_64_reg[4] (\idxPixel_fu_64_reg_n_0_[1] ),
        .\idxPixel_fu_64_reg[4]_0 (\idxPixel_fu_64_reg_n_0_[2] ),
        .\idxPixel_fu_64_reg[4]_1 (\idxPixel_fu_64_reg_n_0_[3] ),
        .\idxPixel_fu_64_reg[4]_2 (\idxPixel_fu_64_reg_n_0_[4] ),
        .\idxPixel_fu_64_reg[8] (\idxPixel_fu_64_reg_n_0_[5] ),
        .\idxPixel_fu_64_reg[8]_0 (\idxPixel_fu_64_reg_n_0_[6] ),
        .\idxPixel_fu_64_reg[8]_1 (\idxPixel_fu_64_reg_n_0_[7] ),
        .\idxPixel_fu_64_reg[8]_2 (\idxPixel_fu_64_reg_n_0_[8] ),
        .inStream_TVALID_int_regslice(inStream_TVALID_int_regslice));
  LUT6 #(
    .INIT(64'hBBBFAAAAFFFFAAAA)) 
    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg_i_1
       (.I0(Q[1]),
        .I1(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(\ap_CS_fsm_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[0]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[0]),
        .O(histo_Din_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[10]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[10]),
        .O(histo_Din_A[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[11]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[11]),
        .O(histo_Din_A[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[12]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[12]),
        .O(histo_Din_A[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[13]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[13]),
        .O(histo_Din_A[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[14]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[14]),
        .O(histo_Din_A[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[15]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[15]),
        .O(histo_Din_A[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[16]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[16]),
        .O(histo_Din_A[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[17]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[17]),
        .O(histo_Din_A[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[18]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[18]),
        .O(histo_Din_A[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[19]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[19]),
        .O(histo_Din_A[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[1]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[1]),
        .O(histo_Din_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[20]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[20]),
        .O(histo_Din_A[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[21]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[21]),
        .O(histo_Din_A[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[22]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[22]),
        .O(histo_Din_A[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[23]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[23]),
        .O(histo_Din_A[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[24]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[24]),
        .O(histo_Din_A[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[25]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[25]),
        .O(histo_Din_A[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[26]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[26]),
        .O(histo_Din_A[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[27]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[27]),
        .O(histo_Din_A[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[28]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[28]),
        .O(histo_Din_A[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[29]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[29]),
        .O(histo_Din_A[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[2]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[2]),
        .O(histo_Din_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[30]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[30]),
        .O(histo_Din_A[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[31]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[31]),
        .O(histo_Din_A[31]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[3]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[3]),
        .O(histo_Din_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[4]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[4]),
        .O(histo_Din_A[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[5]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[5]),
        .O(histo_Din_A[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[6]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[6]),
        .O(histo_Din_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[7]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[7]),
        .O(histo_Din_A[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[8]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[8]),
        .O(histo_Din_A[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \histo_Din_A[9]_INST_0 
       (.I0(Q[2]),
        .I1(add_ln26_reg_217[9]),
        .O(histo_Din_A[9]));
  LUT5 #(
    .INIT(32'h8F808080)) 
    histo_EN_A_INST_0
       (.I0(ap_enable_reg_pp0_iter10),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .O(histo_EN_A));
  LUT6 #(
    .INIT(64'hFFFFFF4700000000)) 
    histo_EN_A_INST_0_i_1
       (.I0(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(inStream_TVALID_int_regslice),
        .I4(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter10));
  LUT5 #(
    .INIT(32'hA8000000)) 
    histo_EN_B_INST_0
       (.I0(Q[2]),
        .I1(inStream_TVALID_int_regslice),
        .I2(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_enable_reg_pp0_iter0),
        .O(histo_EN_B));
  LUT5 #(
    .INIT(32'h8888F000)) 
    \histo_WEN_A[0]_INST_0 
       (.I0(ap_enable_reg_pp0_iter10),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(E),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(histo_WEN_A));
  LUT6 #(
    .INIT(64'h4444444404000444)) 
    \histo_addr_reg_206[7]_i_1 
       (.I0(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(inStream_TVALID_int_regslice),
        .O(addr_cmp_reg_2120));
  FDRE \histo_addr_reg_206_reg[0] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[0]),
        .Q(\histo_addr_reg_206_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \histo_addr_reg_206_reg[1] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[1]),
        .Q(\histo_addr_reg_206_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \histo_addr_reg_206_reg[2] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[2]),
        .Q(\histo_addr_reg_206_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \histo_addr_reg_206_reg[3] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[3]),
        .Q(\histo_addr_reg_206_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \histo_addr_reg_206_reg[4] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[4]),
        .Q(\histo_addr_reg_206_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \histo_addr_reg_206_reg[5] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[5]),
        .Q(\histo_addr_reg_206_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \histo_addr_reg_206_reg[6] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[6]),
        .Q(\histo_addr_reg_206_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \histo_addr_reg_206_reg[7] 
       (.C(ap_clk),
        .CE(addr_cmp_reg_2120),
        .D(histo_Addr_B[7]),
        .Q(\histo_addr_reg_206_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \icmp_ln19_reg_202_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(icmp_ln19_fu_121_p2),
        .Q(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 idxPixel_2_fu_127_p2_carry
       (.CI(1'b0),
        .CO({idxPixel_2_fu_127_p2_carry_n_0,idxPixel_2_fu_127_p2_carry_n_1,idxPixel_2_fu_127_p2_carry_n_2,idxPixel_2_fu_127_p2_carry_n_3}),
        .CYINIT(ap_sig_allocacmp_idxPixel_1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_2_fu_127_p2[4:1]),
        .S(ap_sig_allocacmp_idxPixel_1[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 idxPixel_2_fu_127_p2_carry__0
       (.CI(idxPixel_2_fu_127_p2_carry_n_0),
        .CO({idxPixel_2_fu_127_p2_carry__0_n_0,idxPixel_2_fu_127_p2_carry__0_n_1,idxPixel_2_fu_127_p2_carry__0_n_2,idxPixel_2_fu_127_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_2_fu_127_p2[8:5]),
        .S(ap_sig_allocacmp_idxPixel_1[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 idxPixel_2_fu_127_p2_carry__1
       (.CI(idxPixel_2_fu_127_p2_carry__0_n_0),
        .CO({idxPixel_2_fu_127_p2_carry__1_n_0,idxPixel_2_fu_127_p2_carry__1_n_1,idxPixel_2_fu_127_p2_carry__1_n_2,idxPixel_2_fu_127_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_2_fu_127_p2[12:9]),
        .S(ap_sig_allocacmp_idxPixel_1[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 idxPixel_2_fu_127_p2_carry__2
       (.CI(idxPixel_2_fu_127_p2_carry__1_n_0),
        .CO({NLW_idxPixel_2_fu_127_p2_carry__2_CO_UNCONNECTED[3],idxPixel_2_fu_127_p2_carry__2_n_1,idxPixel_2_fu_127_p2_carry__2_n_2,idxPixel_2_fu_127_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(idxPixel_2_fu_127_p2[16:13]),
        .S(ap_sig_allocacmp_idxPixel_1[16:13]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \idxPixel_fu_64[16]_i_2 
       (.I0(\idxPixel_fu_64[16]_i_4_n_0 ),
        .I1(\idxPixel_fu_64_reg_n_0_[5] ),
        .I2(\idxPixel_fu_64_reg_n_0_[6] ),
        .I3(\idxPixel_fu_64_reg_n_0_[3] ),
        .I4(\idxPixel_fu_64_reg_n_0_[4] ),
        .O(\idxPixel_fu_64[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \idxPixel_fu_64[16]_i_3 
       (.I0(\idxPixel_fu_64_reg_n_0_[9] ),
        .I1(\idxPixel_fu_64_reg_n_0_[10] ),
        .I2(\idxPixel_fu_64_reg_n_0_[7] ),
        .I3(\idxPixel_fu_64_reg_n_0_[8] ),
        .I4(\idxPixel_fu_64[16]_i_5_n_0 ),
        .O(\idxPixel_fu_64[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \idxPixel_fu_64[16]_i_4 
       (.I0(\idxPixel_fu_64_reg_n_0_[0] ),
        .I1(\idxPixel_fu_64_reg_n_0_[15] ),
        .I2(\idxPixel_fu_64_reg_n_0_[16] ),
        .I3(\idxPixel_fu_64_reg_n_0_[2] ),
        .I4(\idxPixel_fu_64_reg_n_0_[1] ),
        .O(\idxPixel_fu_64[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \idxPixel_fu_64[16]_i_5 
       (.I0(\idxPixel_fu_64_reg_n_0_[11] ),
        .I1(\idxPixel_fu_64_reg_n_0_[12] ),
        .I2(\idxPixel_fu_64_reg_n_0_[13] ),
        .I3(\idxPixel_fu_64_reg_n_0_[14] ),
        .O(\idxPixel_fu_64[16]_i_5_n_0 ));
  FDRE \idxPixel_fu_64_reg[0] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[0]),
        .Q(\idxPixel_fu_64_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[10] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[10]),
        .Q(\idxPixel_fu_64_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[11] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[11]),
        .Q(\idxPixel_fu_64_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[12] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[12]),
        .Q(\idxPixel_fu_64_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[13] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[13]),
        .Q(\idxPixel_fu_64_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[14] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[14]),
        .Q(\idxPixel_fu_64_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[15] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[15]),
        .Q(\idxPixel_fu_64_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[16] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[16]),
        .Q(\idxPixel_fu_64_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[1] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[1]),
        .Q(\idxPixel_fu_64_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[2] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[2]),
        .Q(\idxPixel_fu_64_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[3] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[3]),
        .Q(\idxPixel_fu_64_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[4] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[4]),
        .Q(\idxPixel_fu_64_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[5] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[5]),
        .Q(\idxPixel_fu_64_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[6] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[6]),
        .Q(\idxPixel_fu_64_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[7] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[7]),
        .Q(\idxPixel_fu_64_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[8] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[8]),
        .Q(\idxPixel_fu_64_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \idxPixel_fu_64_reg[9] 
       (.C(ap_clk),
        .CE(idxPixel_fu_64),
        .D(idxPixel_2_fu_127_p2[9]),
        .Q(\idxPixel_fu_64_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \reuse_addr_reg_fu_56[8]_i_1 
       (.I0(ap_loop_init_int),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(flow_control_loop_pipe_sequential_init_U_n_3),
        .I4(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .O(\reuse_addr_reg_fu_56[8]_i_1_n_0 ));
  FDSE \reuse_addr_reg_fu_56_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[0]),
        .Q(\reuse_addr_reg_fu_56_reg_n_0_[0] ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDSE \reuse_addr_reg_fu_56_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[1]),
        .Q(\reuse_addr_reg_fu_56_reg_n_0_[1] ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDSE \reuse_addr_reg_fu_56_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[2]),
        .Q(\reuse_addr_reg_fu_56_reg[2]_0 ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDSE \reuse_addr_reg_fu_56_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[3]),
        .Q(\reuse_addr_reg_fu_56_reg_n_0_[3] ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDSE \reuse_addr_reg_fu_56_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[4]),
        .Q(\reuse_addr_reg_fu_56_reg_n_0_[4] ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDSE \reuse_addr_reg_fu_56_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[5]),
        .Q(\reuse_addr_reg_fu_56_reg[5]_0 ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDSE \reuse_addr_reg_fu_56_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[6]),
        .Q(\reuse_addr_reg_fu_56_reg[6]_0 ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDSE \reuse_addr_reg_fu_56_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_3),
        .D(histo_Addr_B[7]),
        .Q(\reuse_addr_reg_fu_56_reg[7]_0 ),
        .S(flow_control_loop_pipe_sequential_init_U_n_26));
  FDRE \reuse_addr_reg_fu_56_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\reuse_addr_reg_fu_56[8]_i_1_n_0 ),
        .Q(\reuse_addr_reg_fu_56_reg[8]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA8AA0000)) 
    \reuse_reg_fu_60[31]_i_2 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(\icmp_ln19_reg_202_reg_n_0_[0] ),
        .I2(inStream_TVALID_int_regslice),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_enable_reg_pp0_iter1),
        .O(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A));
  FDRE \reuse_reg_fu_60_reg[0] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[0]),
        .Q(reuse_reg_fu_60[0]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[10] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[10]),
        .Q(reuse_reg_fu_60[10]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[11] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[11]),
        .Q(reuse_reg_fu_60[11]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[12] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[12]),
        .Q(reuse_reg_fu_60[12]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[13] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[13]),
        .Q(reuse_reg_fu_60[13]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[14] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[14]),
        .Q(reuse_reg_fu_60[14]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[15] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[15]),
        .Q(reuse_reg_fu_60[15]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[16] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[16]),
        .Q(reuse_reg_fu_60[16]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[17] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[17]),
        .Q(reuse_reg_fu_60[17]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[18] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[18]),
        .Q(reuse_reg_fu_60[18]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[19] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[19]),
        .Q(reuse_reg_fu_60[19]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[1] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[1]),
        .Q(reuse_reg_fu_60[1]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[20] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[20]),
        .Q(reuse_reg_fu_60[20]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[21] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[21]),
        .Q(reuse_reg_fu_60[21]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[22] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[22]),
        .Q(reuse_reg_fu_60[22]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[23] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[23]),
        .Q(reuse_reg_fu_60[23]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[24] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[24]),
        .Q(reuse_reg_fu_60[24]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[25] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[25]),
        .Q(reuse_reg_fu_60[25]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[26] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[26]),
        .Q(reuse_reg_fu_60[26]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[27] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[27]),
        .Q(reuse_reg_fu_60[27]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[28] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[28]),
        .Q(reuse_reg_fu_60[28]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[29] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[29]),
        .Q(reuse_reg_fu_60[29]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[2] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[2]),
        .Q(reuse_reg_fu_60[2]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[30] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[30]),
        .Q(reuse_reg_fu_60[30]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[31] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[31]),
        .Q(reuse_reg_fu_60[31]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[3] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[3]),
        .Q(reuse_reg_fu_60[3]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[4] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[4]),
        .Q(reuse_reg_fu_60[4]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[5] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[5]),
        .Q(reuse_reg_fu_60[5]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[6] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[6]),
        .Q(reuse_reg_fu_60[6]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[7] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[7]),
        .Q(reuse_reg_fu_60[7]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[8] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[8]),
        .Q(reuse_reg_fu_60[8]),
        .R(ap_sig_allocacmp_idxPixel_11));
  FDRE \reuse_reg_fu_60_reg[9] 
       (.C(ap_clk),
        .CE(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
        .D(add_ln26_reg_217[9]),
        .Q(reuse_reg_fu_60[9]),
        .R(ap_sig_allocacmp_idxPixel_11));
endmodule

(* ORIG_REF_NAME = "doHist_flow_control_loop_pipe_sequential_init" *) 
module design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init
   (ap_loop_init_int,
    D,
    ap_enable_reg_pp0_iter0,
    \ap_CS_fsm_reg[1] ,
    ap_done,
    idxPixel_fu_64,
    ap_sig_allocacmp_idxPixel_1,
    SR,
    idxPixel_2_fu_127_p2,
    icmp_ln19_fu_121_p2,
    ap_loop_init_int_reg_0,
    ap_done_cache_reg_0,
    ap_clk,
    Q,
    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
    ap_enable_reg_pp0_iter0_reg,
    ap_done_cache_reg_1,
    ap_rst_n,
    ap_done_cache_reg_2,
    inStream_TVALID_int_regslice,
    \idxPixel_fu_64_reg[0] ,
    \idxPixel_fu_64_reg[0]_0 ,
    \idxPixel_fu_64_reg[0]_1 ,
    \idxPixel_fu_64_reg[4] ,
    \idxPixel_fu_64_reg[4]_0 ,
    \idxPixel_fu_64_reg[4]_1 ,
    \idxPixel_fu_64_reg[4]_2 ,
    \idxPixel_fu_64_reg[8] ,
    \idxPixel_fu_64_reg[8]_0 ,
    \idxPixel_fu_64_reg[8]_1 ,
    \idxPixel_fu_64_reg[8]_2 ,
    \idxPixel_fu_64_reg[12] ,
    \idxPixel_fu_64_reg[12]_0 ,
    \idxPixel_fu_64_reg[12]_1 ,
    \idxPixel_fu_64_reg[12]_2 ,
    \idxPixel_fu_64_reg[16] ,
    \idxPixel_fu_64_reg[16]_0 ,
    \idxPixel_fu_64_reg[16]_1 ,
    \idxPixel_fu_64_reg[16]_2 );
  output ap_loop_init_int;
  output [0:0]D;
  output ap_enable_reg_pp0_iter0;
  output \ap_CS_fsm_reg[1] ;
  output ap_done;
  output idxPixel_fu_64;
  output [16:0]ap_sig_allocacmp_idxPixel_1;
  output [0:0]SR;
  output [0:0]idxPixel_2_fu_127_p2;
  output icmp_ln19_fu_121_p2;
  output ap_loop_init_int_reg_0;
  input ap_done_cache_reg_0;
  input ap_clk;
  input [1:0]Q;
  input grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]ap_done_cache_reg_1;
  input ap_rst_n;
  input ap_done_cache_reg_2;
  input inStream_TVALID_int_regslice;
  input \idxPixel_fu_64_reg[0] ;
  input \idxPixel_fu_64_reg[0]_0 ;
  input \idxPixel_fu_64_reg[0]_1 ;
  input \idxPixel_fu_64_reg[4] ;
  input \idxPixel_fu_64_reg[4]_0 ;
  input \idxPixel_fu_64_reg[4]_1 ;
  input \idxPixel_fu_64_reg[4]_2 ;
  input \idxPixel_fu_64_reg[8] ;
  input \idxPixel_fu_64_reg[8]_0 ;
  input \idxPixel_fu_64_reg[8]_1 ;
  input \idxPixel_fu_64_reg[8]_2 ;
  input \idxPixel_fu_64_reg[12] ;
  input \idxPixel_fu_64_reg[12]_0 ;
  input \idxPixel_fu_64_reg[12]_1 ;
  input \idxPixel_fu_64_reg[12]_2 ;
  input \idxPixel_fu_64_reg[16] ;
  input \idxPixel_fu_64_reg[16]_0 ;
  input \idxPixel_fu_64_reg[16]_1 ;
  input \idxPixel_fu_64_reg[16]_2 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_done;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_0;
  wire ap_done_cache_reg_0;
  wire [1:0]ap_done_cache_reg_1;
  wire ap_done_cache_reg_2;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire [16:0]ap_sig_allocacmp_idxPixel_1;
  wire grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg;
  wire icmp_ln19_fu_121_p2;
  wire [0:0]idxPixel_2_fu_127_p2;
  wire idxPixel_fu_64;
  wire \idxPixel_fu_64_reg[0] ;
  wire \idxPixel_fu_64_reg[0]_0 ;
  wire \idxPixel_fu_64_reg[0]_1 ;
  wire \idxPixel_fu_64_reg[12] ;
  wire \idxPixel_fu_64_reg[12]_0 ;
  wire \idxPixel_fu_64_reg[12]_1 ;
  wire \idxPixel_fu_64_reg[12]_2 ;
  wire \idxPixel_fu_64_reg[16] ;
  wire \idxPixel_fu_64_reg[16]_0 ;
  wire \idxPixel_fu_64_reg[16]_1 ;
  wire \idxPixel_fu_64_reg[16]_2 ;
  wire \idxPixel_fu_64_reg[4] ;
  wire \idxPixel_fu_64_reg[4]_0 ;
  wire \idxPixel_fu_64_reg[4]_1 ;
  wire \idxPixel_fu_64_reg[4]_2 ;
  wire \idxPixel_fu_64_reg[8] ;
  wire \idxPixel_fu_64_reg[8]_0 ;
  wire \idxPixel_fu_64_reg[8]_1 ;
  wire \idxPixel_fu_64_reg[8]_2 ;
  wire inStream_TVALID_int_regslice;
  wire \reuse_addr_reg_fu_56[7]_i_3_n_0 ;

  LUT6 #(
    .INIT(64'hF222222200000000)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(ap_done_cache),
        .I1(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I2(ap_done_cache_reg_1[1]),
        .I3(ap_done_cache_reg_2),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[1]),
        .O(ap_done));
  LUT6 #(
    .INIT(64'hAAAEAAAEAAAAEAEE)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(ap_done_cache),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(ap_done_cache_reg_1[0]),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFF00D0D0D0)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ap_done_cache),
        .I1(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I2(Q[1]),
        .I3(ap_done_cache_reg_1[1]),
        .I4(ap_done_cache_reg_2),
        .I5(Q[0]),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE000FFFFE0004000)) 
    ap_done_cache_i_1__0
       (.I0(ap_done_cache_reg_1[0]),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_done_cache_reg_2),
        .I3(ap_done_cache_reg_1[1]),
        .I4(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache),
        .R(ap_done_cache_reg_0));
  LUT6 #(
    .INIT(64'hDFFFFFFFDD555555)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_done_cache_reg_2),
        .I2(inStream_TVALID_int_regslice),
        .I3(ap_done_cache_reg_1[1]),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_loop_init_int),
        .O(ap_loop_init_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    histo_EN_B_INST_0_i_1
       (.I0(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I1(ap_done_cache_reg_1[0]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \icmp_ln19_reg_202[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I2(\idxPixel_fu_64_reg[0]_0 ),
        .I3(\idxPixel_fu_64_reg[0] ),
        .O(icmp_ln19_fu_121_p2));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__0_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[8]_2 ),
        .O(ap_sig_allocacmp_idxPixel_1[8]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__0_i_2
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[8]_1 ),
        .O(ap_sig_allocacmp_idxPixel_1[7]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__0_i_3
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[8]_0 ),
        .O(ap_sig_allocacmp_idxPixel_1[6]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__0_i_4
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[8] ),
        .O(ap_sig_allocacmp_idxPixel_1[5]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__1_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[12]_2 ),
        .O(ap_sig_allocacmp_idxPixel_1[12]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__1_i_2
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[12]_1 ),
        .O(ap_sig_allocacmp_idxPixel_1[11]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__1_i_3
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[12]_0 ),
        .O(ap_sig_allocacmp_idxPixel_1[10]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__1_i_4
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[12] ),
        .O(ap_sig_allocacmp_idxPixel_1[9]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__2_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[16]_2 ),
        .O(ap_sig_allocacmp_idxPixel_1[16]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__2_i_2
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[16]_1 ),
        .O(ap_sig_allocacmp_idxPixel_1[15]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__2_i_3
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[16]_0 ),
        .O(ap_sig_allocacmp_idxPixel_1[14]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry__2_i_4
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[16] ),
        .O(ap_sig_allocacmp_idxPixel_1[13]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[0]_1 ),
        .O(ap_sig_allocacmp_idxPixel_1[0]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry_i_2
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[4]_2 ),
        .O(ap_sig_allocacmp_idxPixel_1[4]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry_i_3
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[4]_1 ),
        .O(ap_sig_allocacmp_idxPixel_1[3]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry_i_4
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[4]_0 ),
        .O(ap_sig_allocacmp_idxPixel_1[2]));
  LUT4 #(
    .INIT(16'h7F00)) 
    idxPixel_2_fu_127_p2_carry_i_5
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I3(\idxPixel_fu_64_reg[4] ),
        .O(ap_sig_allocacmp_idxPixel_1[1]));
  LUT2 #(
    .INIT(4'hD)) 
    \idxPixel_fu_64[0]_i_1 
       (.I0(\idxPixel_fu_64_reg[0]_1 ),
        .I1(ap_loop_init_int),
        .O(idxPixel_2_fu_127_p2));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \idxPixel_fu_64[16]_i_1 
       (.I0(\idxPixel_fu_64_reg[0] ),
        .I1(\idxPixel_fu_64_reg[0]_0 ),
        .I2(ap_loop_init_int),
        .I3(ap_done_cache_reg_1[0]),
        .I4(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .O(idxPixel_fu_64));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \reuse_addr_reg_fu_56[7]_i_1 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(ap_loop_init_int),
        .I2(ap_done_cache_reg_1[0]),
        .I3(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
  LUT5 #(
    .INIT(32'h0800FFFF)) 
    \reuse_addr_reg_fu_56[7]_i_2 
       (.I0(ap_done_cache_reg_1[1]),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_done_cache_reg_2),
        .I3(inStream_TVALID_int_regslice),
        .I4(\reuse_addr_reg_fu_56[7]_i_3_n_0 ),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \reuse_addr_reg_fu_56[7]_i_3 
       (.I0(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .I1(ap_done_cache_reg_1[0]),
        .I2(ap_loop_init_int),
        .O(\reuse_addr_reg_fu_56[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reuse_reg_fu_60[31]_i_1 
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_1[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "doHist_flow_control_loop_pipe_sequential_init" *) 
module design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init_0
   (D,
    \ap_CS_fsm_reg[1] ,
    E,
    \idxHist_fu_32_reg[6] ,
    ap_loop_init_int_reg_0,
    histo_Addr_A,
    ap_done_cache_reg_0,
    ap_clk,
    Q,
    \idxHist_fu_32_reg[8] ,
    \idxHist_fu_32_reg[8]_0 ,
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
    \histo_Addr_A[3] ,
    ap_start,
    ap_rst_n,
    \histo_Addr_A[9] ,
    \idxHist_fu_32_reg[6]_0 ,
    \idxHist_fu_32_reg[5] );
  output [8:0]D;
  output [1:0]\ap_CS_fsm_reg[1] ;
  output [0:0]E;
  output \idxHist_fu_32_reg[6] ;
  output ap_loop_init_int_reg_0;
  output [8:0]histo_Addr_A;
  input ap_done_cache_reg_0;
  input ap_clk;
  input [8:0]Q;
  input \idxHist_fu_32_reg[8] ;
  input \idxHist_fu_32_reg[8]_0 ;
  input grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  input [2:0]\histo_Addr_A[3] ;
  input ap_start;
  input ap_rst_n;
  input [7:0]\histo_Addr_A[9] ;
  input \idxHist_fu_32_reg[6]_0 ;
  input \idxHist_fu_32_reg[5] ;

  wire [8:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [1:0]\ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_done_cache_reg_0;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_start;
  wire grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
  wire [8:0]histo_Addr_A;
  wire [2:0]\histo_Addr_A[3] ;
  wire [7:0]\histo_Addr_A[9] ;
  wire \idxHist_fu_32[8]_i_4_n_0 ;
  wire \idxHist_fu_32_reg[5] ;
  wire \idxHist_fu_32_reg[6] ;
  wire \idxHist_fu_32_reg[6]_0 ;
  wire \idxHist_fu_32_reg[8] ;
  wire \idxHist_fu_32_reg[8]_0 ;

  LUT6 #(
    .INIT(64'hFFFFF000F111F000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I1(ap_done_cache),
        .I2(\histo_Addr_A[3] [0]),
        .I3(ap_start),
        .I4(\histo_Addr_A[3] [1]),
        .I5(E),
        .O(\ap_CS_fsm_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h88C8)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_loop_init_int_reg_0),
        .I1(\histo_Addr_A[3] [1]),
        .I2(ap_done_cache),
        .I3(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] [1]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_loop_init_int),
        .I1(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I2(Q[1]),
        .I3(Q[8]),
        .I4(\idxHist_fu_32_reg[6] ),
        .I5(Q[0]),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(ap_loop_init_int_reg_0),
        .I1(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_done_cache_reg_0));
  LUT4 #(
    .INIT(16'hDFDD)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int_reg_0),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1500)) 
    \histo_Addr_A[10]_INST_0 
       (.I0(\histo_Addr_A[3] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(Q[8]),
        .O(histo_Addr_A[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAA0CCC)) 
    \histo_Addr_A[2]_INST_0 
       (.I0(\histo_Addr_A[9] [0]),
        .I1(Q[0]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\histo_Addr_A[3] [2]),
        .O(histo_Addr_A[0]));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    \histo_Addr_A[3]_INST_0 
       (.I0(\histo_Addr_A[9] [1]),
        .I1(\histo_Addr_A[3] [2]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[1]),
        .O(histo_Addr_A[1]));
  LUT5 #(
    .INIT(32'hAAAA0CCC)) 
    \histo_Addr_A[4]_INST_0 
       (.I0(\histo_Addr_A[9] [2]),
        .I1(Q[2]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\histo_Addr_A[3] [2]),
        .O(histo_Addr_A[2]));
  LUT5 #(
    .INIT(32'hAAAA0CCC)) 
    \histo_Addr_A[5]_INST_0 
       (.I0(\histo_Addr_A[9] [3]),
        .I1(Q[3]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\histo_Addr_A[3] [2]),
        .O(histo_Addr_A[3]));
  LUT5 #(
    .INIT(32'hAAAA0CCC)) 
    \histo_Addr_A[6]_INST_0 
       (.I0(\histo_Addr_A[9] [4]),
        .I1(Q[4]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\histo_Addr_A[3] [2]),
        .O(histo_Addr_A[4]));
  LUT5 #(
    .INIT(32'hAAAA0CCC)) 
    \histo_Addr_A[7]_INST_0 
       (.I0(\histo_Addr_A[9] [5]),
        .I1(Q[5]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\histo_Addr_A[3] [2]),
        .O(histo_Addr_A[5]));
  LUT5 #(
    .INIT(32'hAAAA0CCC)) 
    \histo_Addr_A[8]_INST_0 
       (.I0(\histo_Addr_A[9] [6]),
        .I1(Q[6]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\histo_Addr_A[3] [2]),
        .O(histo_Addr_A[6]));
  LUT5 #(
    .INIT(32'hAAAA0CCC)) 
    \histo_Addr_A[9]_INST_0 
       (.I0(\histo_Addr_A[9] [7]),
        .I1(Q[7]),
        .I2(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\histo_Addr_A[3] [2]),
        .O(histo_Addr_A[7]));
  LUT6 #(
    .INIT(64'hFFFF0000FFEF0000)) 
    \histo_WEN_A[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(\idxHist_fu_32_reg[6] ),
        .I2(Q[8]),
        .I3(Q[1]),
        .I4(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \histo_WEN_A[0]_INST_0_i_2 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\idxHist_fu_32_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAFFAAFB)) 
    \idxHist_fu_32[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(Q[8]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\idxHist_fu_32_reg[6] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \idxHist_fu_32[1]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1230)) 
    \idxHist_fu_32[2]_i_1 
       (.I0(Q[1]),
        .I1(ap_loop_init_int),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \idxHist_fu_32[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(ap_loop_init_int),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7F800000FF000000)) 
    \idxHist_fu_32[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\idxHist_fu_32[8]_i_4_n_0 ),
        .I5(Q[1]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h090C)) 
    \idxHist_fu_32[5]_i_1 
       (.I0(\idxHist_fu_32_reg[5] ),
        .I1(Q[5]),
        .I2(ap_loop_init_int),
        .I3(Q[1]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h090C)) 
    \idxHist_fu_32[6]_i_1 
       (.I0(\idxHist_fu_32_reg[6]_0 ),
        .I1(Q[6]),
        .I2(ap_loop_init_int),
        .I3(Q[1]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h090C)) 
    \idxHist_fu_32[7]_i_1 
       (.I0(\idxHist_fu_32_reg[8] ),
        .I1(Q[7]),
        .I2(ap_loop_init_int),
        .I3(Q[1]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hDD002200F0000000)) 
    \idxHist_fu_32[8]_i_1 
       (.I0(Q[7]),
        .I1(\idxHist_fu_32_reg[8] ),
        .I2(\idxHist_fu_32_reg[8]_0 ),
        .I3(\idxHist_fu_32[8]_i_4_n_0 ),
        .I4(Q[8]),
        .I5(Q[1]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \idxHist_fu_32[8]_i_4 
       (.I0(ap_loop_init_int),
        .I1(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg),
        .O(\idxHist_fu_32[8]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "doHist_regslice_both" *) 
module design_1_doHist_0_0_doHist_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    B_V_data_1_sel,
    inStream_TVALID_int_regslice,
    histo_Addr_B,
    Q,
    \B_V_data_1_payload_A_reg[4]_0 ,
    S,
    B_V_data_1_sel_rd_reg_0,
    B_V_data_1_state,
    ap_clk,
    B_V_data_1_sel_rd_reg_1,
    inStream_TVALID,
    \B_V_data_1_state_reg[0]_0 ,
    ap_rst_n,
    addr_cmp_fu_150_p2_carry,
    addr_cmp_fu_150_p2_carry_0,
    addr_cmp_fu_150_p2_carry_1,
    addr_cmp_fu_150_p2_carry_2,
    addr_cmp_fu_150_p2_carry_3,
    addr_cmp_fu_150_p2_carry_4,
    addr_cmp_fu_150_p2_carry_i_2_0,
    addr_cmp_fu_150_p2_carry_i_2_1,
    addr_cmp_fu_150_p2_carry_i_2_2,
    inStream_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output B_V_data_1_sel;
  output inStream_TVALID_int_regslice;
  output [7:0]histo_Addr_B;
  output [3:0]Q;
  output [3:0]\B_V_data_1_payload_A_reg[4]_0 ;
  output [2:0]S;
  input B_V_data_1_sel_rd_reg_0;
  input [0:0]B_V_data_1_state;
  input ap_clk;
  input B_V_data_1_sel_rd_reg_1;
  input inStream_TVALID;
  input \B_V_data_1_state_reg[0]_0 ;
  input ap_rst_n;
  input addr_cmp_fu_150_p2_carry;
  input addr_cmp_fu_150_p2_carry_0;
  input addr_cmp_fu_150_p2_carry_1;
  input addr_cmp_fu_150_p2_carry_2;
  input addr_cmp_fu_150_p2_carry_3;
  input addr_cmp_fu_150_p2_carry_4;
  input addr_cmp_fu_150_p2_carry_i_2_0;
  input addr_cmp_fu_150_p2_carry_i_2_1;
  input addr_cmp_fu_150_p2_carry_i_2_2;
  input [7:0]inStream_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [3:0]\B_V_data_1_payload_A_reg[4]_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_reg_0;
  wire B_V_data_1_sel_rd_reg_1;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_0;
  wire [0:0]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [3:0]Q;
  wire [2:0]S;
  wire addr_cmp_fu_150_p2_carry;
  wire addr_cmp_fu_150_p2_carry_0;
  wire addr_cmp_fu_150_p2_carry_1;
  wire addr_cmp_fu_150_p2_carry_2;
  wire addr_cmp_fu_150_p2_carry_3;
  wire addr_cmp_fu_150_p2_carry_4;
  wire addr_cmp_fu_150_p2_carry_i_2_0;
  wire addr_cmp_fu_150_p2_carry_i_2_1;
  wire addr_cmp_fu_150_p2_carry_i_2_2;
  wire addr_cmp_fu_150_p2_carry_i_5_n_0;
  wire addr_cmp_fu_150_p2_carry_i_6_n_0;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]histo_Addr_B;
  wire [7:0]inStream_TDATA;
  wire inStream_TVALID;
  wire inStream_TVALID_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[7]_i_1 
       (.I0(inStream_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg[4]_0 [0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg[4]_0 [1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg[4]_0 [2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg[4]_0 [3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(inStream_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[7]_i_1 
       (.I0(inStream_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[4]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(inStream_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_reg_1),
        .Q(B_V_data_1_sel),
        .R(B_V_data_1_sel_rd_reg_0));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(inStream_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(B_V_data_1_sel_rd_reg_0));
  LUT5 #(
    .INIT(32'hFD008800)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(inStream_TVALID),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(ap_rst_n),
        .I4(inStream_TVALID_int_regslice),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(inStream_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(B_V_data_1_sel_rd_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    addr_cmp_fu_150_p2_carry_i_2
       (.I0(addr_cmp_fu_150_p2_carry_i_5_n_0),
        .I1(addr_cmp_fu_150_p2_carry_i_6_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h8484F00F84840000)) 
    addr_cmp_fu_150_p2_carry_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(addr_cmp_fu_150_p2_carry_2),
        .I2(addr_cmp_fu_150_p2_carry_3),
        .I3(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I4(B_V_data_1_sel),
        .I5(addr_cmp_fu_150_p2_carry_4),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h8484F00F84840000)) 
    addr_cmp_fu_150_p2_carry_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(addr_cmp_fu_150_p2_carry),
        .I2(addr_cmp_fu_150_p2_carry_0),
        .I3(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I4(B_V_data_1_sel),
        .I5(addr_cmp_fu_150_p2_carry_1),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0090000000000090)) 
    addr_cmp_fu_150_p2_carry_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(addr_cmp_fu_150_p2_carry_i_2_0),
        .I2(B_V_data_1_sel),
        .I3(addr_cmp_fu_150_p2_carry_i_2_1),
        .I4(addr_cmp_fu_150_p2_carry_i_2_2),
        .I5(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .O(addr_cmp_fu_150_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0009000000000009)) 
    addr_cmp_fu_150_p2_carry_i_6
       (.I0(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I1(addr_cmp_fu_150_p2_carry_i_2_0),
        .I2(B_V_data_1_sel),
        .I3(addr_cmp_fu_150_p2_carry_i_2_1),
        .I4(addr_cmp_fu_150_p2_carry_i_2_2),
        .I5(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .O(addr_cmp_fu_150_p2_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[2]_INST_0 
       (.I0(Q[0]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[4]_0 [0]),
        .O(histo_Addr_B[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[3]_INST_0 
       (.I0(Q[1]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[4]_0 [1]),
        .O(histo_Addr_B[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .O(histo_Addr_B[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[5]_INST_0 
       (.I0(Q[2]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[4]_0 [2]),
        .O(histo_Addr_B[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[6]_INST_0 
       (.I0(Q[3]),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg[4]_0 [3]),
        .O(histo_Addr_B[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .O(histo_Addr_B[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .O(histo_Addr_B[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \histo_Addr_B[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .O(histo_Addr_B[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
