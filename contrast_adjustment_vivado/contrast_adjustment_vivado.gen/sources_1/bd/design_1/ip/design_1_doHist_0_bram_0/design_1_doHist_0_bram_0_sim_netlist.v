// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar  7 15:21:52 2022
// Host        : sam-HP-Pavilion-Laptop-15-eg0xxx running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sam/git_workspace/contrast-adjustment-high-level-synthesis/contrast_adjustment_vivado/contrast_adjustment_vivado.gen/sources_1/bd/design_1/ip/design_1_doHist_0_bram_0/design_1_doHist_0_bram_0_sim_netlist.v
// Design      : design_1_doHist_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_doHist_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_doHist_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 4, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_doHist_0_bram_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59888)
`pragma protect data_block
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
`pragma protect end_protected
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
