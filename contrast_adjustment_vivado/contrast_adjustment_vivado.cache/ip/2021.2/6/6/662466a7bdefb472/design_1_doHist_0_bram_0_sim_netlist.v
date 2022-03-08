// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar  7 15:21:51 2022
// Host        : sam-HP-Pavilion-Laptop-15-eg0xxx running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_doHist_0_bram_0_sim_netlist.v
// Design      : design_1_doHist_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_doHist_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59856)
`pragma protect data_block
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
1GZxTGhZ
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
