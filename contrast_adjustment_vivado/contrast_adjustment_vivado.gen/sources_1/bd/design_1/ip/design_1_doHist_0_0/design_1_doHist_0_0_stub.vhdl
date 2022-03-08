-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Mar  7 15:21:39 2022
-- Host        : sam-HP-Pavilion-Laptop-15-eg0xxx running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/sam/git_workspace/contrast-adjustment-high-level-synthesis/contrast_adjustment_vivado/contrast_adjustment_vivado.gen/sources_1/bd/design_1/ip/design_1_doHist_0_0/design_1_doHist_0_0_stub.vhdl
-- Design      : design_1_doHist_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_doHist_0_0 is
  Port ( 
    ap_local_block : out STD_LOGIC;
    s_axi_ctrl_bus_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_AWVALID : in STD_LOGIC;
    s_axi_ctrl_bus_AWREADY : out STD_LOGIC;
    s_axi_ctrl_bus_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_WVALID : in STD_LOGIC;
    s_axi_ctrl_bus_WREADY : out STD_LOGIC;
    s_axi_ctrl_bus_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bus_BVALID : out STD_LOGIC;
    s_axi_ctrl_bus_BREADY : in STD_LOGIC;
    s_axi_ctrl_bus_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_ARVALID : in STD_LOGIC;
    s_axi_ctrl_bus_ARREADY : out STD_LOGIC;
    s_axi_ctrl_bus_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bus_RVALID : out STD_LOGIC;
    s_axi_ctrl_bus_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    histo_Clk_A : out STD_LOGIC;
    histo_Rst_A : out STD_LOGIC;
    histo_EN_A : out STD_LOGIC;
    histo_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    histo_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Clk_B : out STD_LOGIC;
    histo_Rst_B : out STD_LOGIC;
    histo_EN_B : out STD_LOGIC;
    histo_WEN_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    histo_Addr_B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Din_B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Dout_B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_doHist_0_0;

architecture stub of design_1_doHist_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_local_block,s_axi_ctrl_bus_AWADDR[3:0],s_axi_ctrl_bus_AWVALID,s_axi_ctrl_bus_AWREADY,s_axi_ctrl_bus_WDATA[31:0],s_axi_ctrl_bus_WSTRB[3:0],s_axi_ctrl_bus_WVALID,s_axi_ctrl_bus_WREADY,s_axi_ctrl_bus_BRESP[1:0],s_axi_ctrl_bus_BVALID,s_axi_ctrl_bus_BREADY,s_axi_ctrl_bus_ARADDR[3:0],s_axi_ctrl_bus_ARVALID,s_axi_ctrl_bus_ARREADY,s_axi_ctrl_bus_RDATA[31:0],s_axi_ctrl_bus_RRESP[1:0],s_axi_ctrl_bus_RVALID,s_axi_ctrl_bus_RREADY,ap_clk,ap_rst_n,interrupt,inStream_TVALID,inStream_TREADY,inStream_TDATA[7:0],inStream_TDEST[5:0],inStream_TKEEP[0:0],inStream_TSTRB[0:0],inStream_TUSER[1:0],inStream_TLAST[0:0],inStream_TID[4:0],histo_Clk_A,histo_Rst_A,histo_EN_A,histo_WEN_A[3:0],histo_Addr_A[31:0],histo_Din_A[31:0],histo_Dout_A[31:0],histo_Clk_B,histo_Rst_B,histo_EN_B,histo_WEN_B[3:0],histo_Addr_B[31:0],histo_Din_B[31:0],histo_Dout_B[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "doHist,Vivado 2021.2";
begin
end;
