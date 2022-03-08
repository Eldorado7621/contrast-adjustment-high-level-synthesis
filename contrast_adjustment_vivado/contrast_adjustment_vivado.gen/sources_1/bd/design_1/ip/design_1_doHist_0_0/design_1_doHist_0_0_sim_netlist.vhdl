-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Mar  7 15:21:39 2022
-- Host        : sam-HP-Pavilion-Laptop-15-eg0xxx running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/sam/git_workspace/contrast-adjustment-high-level-synthesis/contrast_adjustment_vivado/contrast_adjustment_vivado.gen/sources_1/bd/design_1/ip/design_1_doHist_0_0/design_1_doHist_0_0_sim_netlist.vhdl
-- Design      : design_1_doHist_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0_doHist_ctrl_bus_s_axi is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : out STD_LOGIC;
    s_axi_ctrl_bus_RVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    s_axi_ctrl_bus_BVALID : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    int_ap_start_reg_0 : out STD_LOGIC;
    s_axi_ctrl_bus_RDATA : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done : in STD_LOGIC;
    s_axi_ctrl_bus_RREADY : in STD_LOGIC;
    s_axi_ctrl_bus_ARVALID : in STD_LOGIC;
    s_axi_ctrl_bus_WDATA : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_bus_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bus_WVALID : in STD_LOGIC;
    s_axi_ctrl_bus_BREADY : in STD_LOGIC;
    s_axi_ctrl_bus_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_AWVALID : in STD_LOGIC;
    ap_done_reg1 : in STD_LOGIC;
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg : in STD_LOGIC;
    s_axi_ctrl_bus_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_doHist_0_0_doHist_ctrl_bus_s_axi : entity is "doHist_ctrl_bus_s_axi";
end design_1_doHist_0_0_doHist_ctrl_bus_s_axi;

architecture STRUCTURE of design_1_doHist_0_0_doHist_ctrl_bus_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_0\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier12_out : STD_LOGIC;
  signal \int_ier[5]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[4]\ : STD_LOGIC;
  signal int_isr9_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[5]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal p_0_in6_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of auto_restart_status_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_gie_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_task_ap_done_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair3";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_rst_n_0 <= \^ap_rst_n_0\;
  ap_start <= \^ap_start\;
  s_axi_ctrl_bus_BVALID <= \^s_axi_ctrl_bus_bvalid\;
  s_axi_ctrl_bus_RVALID <= \^s_axi_ctrl_bus_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FDD"
    )
        port map (
      I0 => \^s_axi_ctrl_bus_rvalid\,
      I1 => s_axi_ctrl_bus_RREADY,
      I2 => s_axi_ctrl_bus_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_ctrl_bus_RREADY,
      I1 => \^s_axi_ctrl_bus_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_ctrl_bus_ARVALID,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_0\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_ctrl_bus_rvalid\,
      R => \^ap_rst_n_0\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0FFD1D1"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^s_axi_ctrl_bus_bvalid\,
      I2 => s_axi_ctrl_bus_BREADY,
      I3 => s_axi_ctrl_bus_AWVALID,
      I4 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_ctrl_bus_AWVALID,
      I2 => s_axi_ctrl_bus_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_ctrl_bus_BREADY,
      I1 => \^s_axi_ctrl_bus_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_ctrl_bus_WVALID,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_0\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_0\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_ctrl_bus_bvalid\,
      R => \^ap_rst_n_0\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^ap_start\,
      I1 => Q(0),
      I2 => ap_done,
      O => D(0)
    );
auto_restart_status_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF0"
    )
        port map (
      I0 => \^ap_start\,
      I1 => Q(0),
      I2 => p_0_in(7),
      I3 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^ap_rst_n_0\
    );
grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^ap_start\,
      I1 => Q(0),
      I2 => ap_done_reg1,
      I3 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      O => int_ap_start_reg_0
    );
histo_Rst_B_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_0\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_start\,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_0_in(2),
      R => \^ap_rst_n_0\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7F7F00FF0000"
    )
        port map (
      I0 => \rdata[0]_i_3_n_0\,
      I1 => s_axi_ctrl_bus_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => p_0_in(7),
      I4 => ap_done,
      I5 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^ap_rst_n_0\
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => p_0_in(7),
      I1 => ap_done,
      I2 => int_ap_start5_out,
      I3 => \^ap_start\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => s_axi_ctrl_bus_WDATA(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[5]_i_2_n_0\,
      O => int_ap_start5_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => \^ap_rst_n_0\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(6),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ier[5]_i_2_n_0\,
      I4 => p_0_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_0_in(7),
      R => \^ap_rst_n_0\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ier[5]_i_2_n_0\,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_0\
    );
\int_ier[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \int_ier[5]_i_2_n_0\,
      O => int_ier12_out
    );
\int_ier[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_ctrl_bus_WSTRB(0),
      I1 => s_axi_ctrl_bus_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[1]\,
      I4 => \waddr_reg_n_0_[0]\,
      O => \int_ier[5]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier12_out,
      D => s_axi_ctrl_bus_WDATA(0),
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_0\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier12_out,
      D => s_axi_ctrl_bus_WDATA(1),
      Q => p_0_in6_in,
      R => \^ap_rst_n_0\
    );
\int_ier_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier12_out,
      D => s_axi_ctrl_bus_WDATA(2),
      Q => \int_ier_reg_n_0_[2]\,
      R => \^ap_rst_n_0\
    );
\int_ier_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier12_out,
      D => s_axi_ctrl_bus_WDATA(3),
      Q => \int_ier_reg_n_0_[3]\,
      R => \^ap_rst_n_0\
    );
\int_ier_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier12_out,
      D => s_axi_ctrl_bus_WDATA(4),
      Q => \int_ier_reg_n_0_[4]\,
      R => \^ap_rst_n_0\
    );
\int_ier_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier12_out,
      D => s_axi_ctrl_bus_WDATA(5),
      Q => \p_0_in__0\,
      R => \^ap_rst_n_0\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(0),
      I1 => int_isr9_out,
      I2 => \int_ier_reg_n_0_[0]\,
      I3 => ap_done,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \int_ier[5]_i_2_n_0\,
      O => int_isr9_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(1),
      I1 => int_isr9_out,
      I2 => p_0_in6_in,
      I3 => ap_done,
      I4 => p_1_in1_in,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => s_axi_ctrl_bus_WDATA(5),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ier[5]_i_2_n_0\,
      I4 => \int_isr_reg_n_0_[5]\,
      O => \int_isr[5]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_0\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => p_1_in1_in,
      R => \^ap_rst_n_0\
    );
\int_isr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[5]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[5]\,
      R => \^ap_rst_n_0\
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF77F7FFFF00F0"
    )
        port map (
      I0 => \rdata[0]_i_3_n_0\,
      I1 => ar_hs,
      I2 => ap_done,
      I3 => auto_restart_status_reg_n_0,
      I4 => int_task_ap_done_i_2_n_0,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q(0),
      I1 => auto_restart_status_reg_n_0,
      I2 => p_0_in(2),
      I3 => \^ap_start\,
      O => int_task_ap_done_i_2_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^ap_rst_n_0\
    );
interrupt_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \int_isr_reg_n_0_[5]\,
      I1 => p_1_in1_in,
      I2 => \int_isr_reg_n_0_[0]\,
      I3 => int_gie_reg_n_0,
      O => interrupt
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => \rdata[0]_i_2_n_0\,
      I2 => \rdata[0]_i_3_n_0\,
      I3 => \^ap_start\,
      I4 => \rdata[0]_i_4_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARADDR(2),
      I1 => s_axi_ctrl_bus_ARADDR(0),
      I2 => s_axi_ctrl_bus_ARADDR(1),
      I3 => s_axi_ctrl_bus_ARADDR(3),
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARADDR(2),
      I1 => s_axi_ctrl_bus_ARADDR(0),
      I2 => s_axi_ctrl_bus_ARADDR(1),
      I3 => s_axi_ctrl_bus_ARADDR(3),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300020000000200"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => s_axi_ctrl_bus_ARADDR(1),
      I2 => s_axi_ctrl_bus_ARADDR(0),
      I3 => s_axi_ctrl_bus_ARADDR(2),
      I4 => s_axi_ctrl_bus_ARADDR(3),
      I5 => \int_isr_reg_n_0_[0]\,
      O => \rdata[0]_i_4_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AF0000C0A00000"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => p_1_in1_in,
      I2 => s_axi_ctrl_bus_ARADDR(3),
      I3 => s_axi_ctrl_bus_ARADDR(2),
      I4 => \rdata[1]_i_2_n_0\,
      I5 => int_task_ap_done,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARADDR(0),
      I1 => s_axi_ctrl_bus_ARADDR(1),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \int_ier_reg_n_0_[2]\,
      I1 => p_0_in(2),
      I2 => s_axi_ctrl_bus_ARADDR(2),
      I3 => s_axi_ctrl_bus_ARADDR(0),
      I4 => s_axi_ctrl_bus_ARADDR(1),
      I5 => s_axi_ctrl_bus_ARADDR(3),
      O => rdata(2)
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \int_ier_reg_n_0_[3]\,
      I1 => int_ap_ready,
      I2 => s_axi_ctrl_bus_ARADDR(2),
      I3 => s_axi_ctrl_bus_ARADDR(0),
      I4 => s_axi_ctrl_bus_ARADDR(1),
      I5 => s_axi_ctrl_bus_ARADDR(3),
      O => rdata(3)
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARADDR(3),
      I1 => s_axi_ctrl_bus_ARADDR(1),
      I2 => s_axi_ctrl_bus_ARADDR(0),
      I3 => s_axi_ctrl_bus_ARADDR(2),
      I4 => \int_ier_reg_n_0_[4]\,
      O => rdata(4)
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AC00000000"
    )
        port map (
      I0 => \int_isr_reg_n_0_[5]\,
      I1 => \p_0_in__0\,
      I2 => s_axi_ctrl_bus_ARADDR(2),
      I3 => s_axi_ctrl_bus_ARADDR(0),
      I4 => s_axi_ctrl_bus_ARADDR(1),
      I5 => s_axi_ctrl_bus_ARADDR(3),
      O => rdata(5)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_ctrl_bus_ARADDR(3),
      I1 => s_axi_ctrl_bus_ARADDR(1),
      I2 => s_axi_ctrl_bus_ARADDR(0),
      I3 => s_axi_ctrl_bus_ARADDR(2),
      I4 => p_0_in(7),
      O => rdata(7)
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_ctrl_bus_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_ctrl_bus_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_ctrl_bus_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_ctrl_bus_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(4),
      Q => s_axi_ctrl_bus_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_ctrl_bus_RDATA(5),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_ctrl_bus_RDATA(6),
      R => '0'
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_ctrl_bus_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_bus_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init is
  port (
    ap_loop_init_int : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0 : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    idxPixel_fu_64 : out STD_LOGIC;
    ap_sig_allocacmp_idxPixel_1 : out STD_LOGIC_VECTOR ( 16 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    idxPixel_2_fu_127_p2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln19_fu_121_p2 : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    ap_done_cache_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_done_cache_reg_2 : in STD_LOGIC;
    inStream_TVALID_int_regslice : in STD_LOGIC;
    \idxPixel_fu_64_reg[0]\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[0]_0\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[0]_1\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[4]\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[4]_0\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[4]_1\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[4]_2\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[8]\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[8]_0\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[8]_1\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[8]_2\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[12]\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[12]_0\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[12]_1\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[12]_2\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[16]\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[16]_0\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[16]_1\ : in STD_LOGIC;
    \idxPixel_fu_64_reg[16]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init : entity is "doHist_flow_control_loop_pipe_sequential_init";
end design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init is
  signal \ap_CS_fsm[3]_i_2_n_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_0\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter0\ : STD_LOGIC;
  signal \^ap_loop_init_int\ : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_0\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_56[7]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of histo_EN_B_INST_0_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \icmp_ln19_reg_202[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \idxPixel_fu_64[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reuse_addr_reg_fu_56[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reuse_addr_reg_fu_56[7]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reuse_reg_fu_60[31]_i_1\ : label is "soft_lutpair15";
begin
  \ap_CS_fsm_reg[1]\ <= \^ap_cs_fsm_reg[1]\;
  ap_enable_reg_pp0_iter0 <= \^ap_enable_reg_pp0_iter0\;
  ap_loop_init_int <= \^ap_loop_init_int\;
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222222200000000"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I2 => ap_done_cache_reg_1(1),
      I3 => ap_done_cache_reg_2,
      I4 => \^ap_enable_reg_pp0_iter0\,
      I5 => Q(1),
      O => ap_done
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAEAAAAEAEE"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2_n_0\,
      I1 => Q(1),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => ap_done_cache,
      I4 => ap_enable_reg_pp0_iter0_reg,
      I5 => ap_done_cache_reg_1(0),
      O => D(0)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00D0D0D0"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I2 => Q(1),
      I3 => ap_done_cache_reg_1(1),
      I4 => ap_done_cache_reg_2,
      I5 => Q(0),
      O => \ap_CS_fsm[3]_i_2_n_0\
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000FFFFE0004000"
    )
        port map (
      I0 => ap_done_cache_reg_1(0),
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_done_cache_reg_2,
      I3 => ap_done_cache_reg_1(1),
      I4 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I5 => ap_done_cache,
      O => \ap_done_cache_i_1__0_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_0\,
      Q => ap_done_cache,
      R => ap_done_cache_reg_0
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFDD555555"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_done_cache_reg_2,
      I2 => inStream_TVALID_int_regslice,
      I3 => ap_done_cache_reg_1(1),
      I4 => \^ap_enable_reg_pp0_iter0\,
      I5 => \^ap_loop_init_int\,
      O => \ap_loop_init_int_i_1__0_n_0\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_0\,
      Q => \^ap_loop_init_int\,
      R => '0'
    );
histo_EN_B_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I1 => ap_done_cache_reg_1(0),
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => \^ap_enable_reg_pp0_iter0\
    );
\icmp_ln19_reg_202[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I2 => \idxPixel_fu_64_reg[0]_0\,
      I3 => \idxPixel_fu_64_reg[0]\,
      O => icmp_ln19_fu_121_p2
    );
\idxPixel_2_fu_127_p2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[8]_2\,
      O => ap_sig_allocacmp_idxPixel_1(8)
    );
\idxPixel_2_fu_127_p2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[8]_1\,
      O => ap_sig_allocacmp_idxPixel_1(7)
    );
\idxPixel_2_fu_127_p2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[8]_0\,
      O => ap_sig_allocacmp_idxPixel_1(6)
    );
\idxPixel_2_fu_127_p2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[8]\,
      O => ap_sig_allocacmp_idxPixel_1(5)
    );
\idxPixel_2_fu_127_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[12]_2\,
      O => ap_sig_allocacmp_idxPixel_1(12)
    );
\idxPixel_2_fu_127_p2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[12]_1\,
      O => ap_sig_allocacmp_idxPixel_1(11)
    );
\idxPixel_2_fu_127_p2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[12]_0\,
      O => ap_sig_allocacmp_idxPixel_1(10)
    );
\idxPixel_2_fu_127_p2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[12]\,
      O => ap_sig_allocacmp_idxPixel_1(9)
    );
\idxPixel_2_fu_127_p2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[16]_2\,
      O => ap_sig_allocacmp_idxPixel_1(16)
    );
\idxPixel_2_fu_127_p2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[16]_1\,
      O => ap_sig_allocacmp_idxPixel_1(15)
    );
\idxPixel_2_fu_127_p2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[16]_0\,
      O => ap_sig_allocacmp_idxPixel_1(14)
    );
\idxPixel_2_fu_127_p2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[16]\,
      O => ap_sig_allocacmp_idxPixel_1(13)
    );
idxPixel_2_fu_127_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[0]_1\,
      O => ap_sig_allocacmp_idxPixel_1(0)
    );
idxPixel_2_fu_127_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[4]_2\,
      O => ap_sig_allocacmp_idxPixel_1(4)
    );
idxPixel_2_fu_127_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[4]_1\,
      O => ap_sig_allocacmp_idxPixel_1(3)
    );
idxPixel_2_fu_127_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[4]_0\,
      O => ap_sig_allocacmp_idxPixel_1(2)
    );
idxPixel_2_fu_127_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => \idxPixel_fu_64_reg[4]\,
      O => ap_sig_allocacmp_idxPixel_1(1)
    );
\idxPixel_fu_64[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \idxPixel_fu_64_reg[0]_1\,
      I1 => \^ap_loop_init_int\,
      O => idxPixel_2_fu_127_p2(0)
    );
\idxPixel_fu_64[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \idxPixel_fu_64_reg[0]\,
      I1 => \idxPixel_fu_64_reg[0]_0\,
      I2 => \^ap_loop_init_int\,
      I3 => ap_done_cache_reg_1(0),
      I4 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      O => idxPixel_fu_64
    );
\reuse_addr_reg_fu_56[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]\,
      I1 => \^ap_loop_init_int\,
      I2 => ap_done_cache_reg_1(0),
      I3 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      O => ap_loop_init_int_reg_0
    );
\reuse_addr_reg_fu_56[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => ap_done_cache_reg_1(1),
      I1 => \^ap_enable_reg_pp0_iter0\,
      I2 => ap_done_cache_reg_2,
      I3 => inStream_TVALID_int_regslice,
      I4 => \reuse_addr_reg_fu_56[7]_i_3_n_0\,
      O => \^ap_cs_fsm_reg[1]\
    );
\reuse_addr_reg_fu_56[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I1 => ap_done_cache_reg_1(0),
      I2 => \^ap_loop_init_int\,
      O => \reuse_addr_reg_fu_56[7]_i_3_n_0\
    );
\reuse_reg_fu_60[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => ap_done_cache_reg_1(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \idxHist_fu_32_reg[6]\ : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC;
    histo_Addr_A : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_done_cache_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \idxHist_fu_32_reg[8]\ : in STD_LOGIC;
    \idxHist_fu_32_reg[8]_0\ : in STD_LOGIC;
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg : in STD_LOGIC;
    \histo_Addr_A[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \histo_Addr_A[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \idxHist_fu_32_reg[6]_0\ : in STD_LOGIC;
    \idxHist_fu_32_reg[5]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init_0 : entity is "doHist_flow_control_loop_pipe_sequential_init";
end design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init_0;

architecture STRUCTURE of design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init_0 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal \^ap_loop_init_int_reg_0\ : STD_LOGIC;
  signal \idxHist_fu_32[8]_i_4_n_0\ : STD_LOGIC;
  signal \^idxhist_fu_32_reg[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ap_done_cache_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \histo_Addr_A[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \idxHist_fu_32[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \idxHist_fu_32[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \idxHist_fu_32[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \idxHist_fu_32[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \idxHist_fu_32[8]_i_4\ : label is "soft_lutpair10";
begin
  E(0) <= \^e\(0);
  ap_loop_init_int_reg_0 <= \^ap_loop_init_int_reg_0\;
  \idxHist_fu_32_reg[6]\ <= \^idxhist_fu_32_reg[6]\;
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F111F000"
    )
        port map (
      I0 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I1 => ap_done_cache,
      I2 => \histo_Addr_A[3]\(0),
      I3 => ap_start,
      I4 => \histo_Addr_A[3]\(1),
      I5 => \^e\(0),
      O => \ap_CS_fsm_reg[1]\(0)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C8"
    )
        port map (
      I0 => \^ap_loop_init_int_reg_0\,
      I1 => \histo_Addr_A[3]\(1),
      I2 => ap_done_cache,
      I3 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      O => \ap_CS_fsm_reg[1]\(1)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I2 => Q(1),
      I3 => Q(8),
      I4 => \^idxhist_fu_32_reg[6]\,
      I5 => Q(0),
      O => \^ap_loop_init_int_reg_0\
    );
ap_done_cache_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ap_loop_init_int_reg_0\,
      I1 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I2 => ap_done_cache,
      O => ap_done_cache_i_1_n_0
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_0,
      Q => ap_done_cache,
      R => ap_done_cache_reg_0
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ap_loop_init_int_reg_0\,
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_0,
      Q => ap_loop_init_int,
      R => '0'
    );
\histo_Addr_A[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1500"
    )
        port map (
      I0 => \histo_Addr_A[3]\(2),
      I1 => ap_loop_init_int,
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => Q(8),
      O => histo_Addr_A(8)
    );
\histo_Addr_A[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0CCC"
    )
        port map (
      I0 => \histo_Addr_A[9]\(0),
      I1 => Q(0),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \histo_Addr_A[3]\(2),
      O => histo_Addr_A(0)
    );
\histo_Addr_A[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => \histo_Addr_A[9]\(1),
      I1 => \histo_Addr_A[3]\(2),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => Q(1),
      O => histo_Addr_A(1)
    );
\histo_Addr_A[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0CCC"
    )
        port map (
      I0 => \histo_Addr_A[9]\(2),
      I1 => Q(2),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \histo_Addr_A[3]\(2),
      O => histo_Addr_A(2)
    );
\histo_Addr_A[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0CCC"
    )
        port map (
      I0 => \histo_Addr_A[9]\(3),
      I1 => Q(3),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \histo_Addr_A[3]\(2),
      O => histo_Addr_A(3)
    );
\histo_Addr_A[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0CCC"
    )
        port map (
      I0 => \histo_Addr_A[9]\(4),
      I1 => Q(4),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \histo_Addr_A[3]\(2),
      O => histo_Addr_A(4)
    );
\histo_Addr_A[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0CCC"
    )
        port map (
      I0 => \histo_Addr_A[9]\(5),
      I1 => Q(5),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \histo_Addr_A[3]\(2),
      O => histo_Addr_A(5)
    );
\histo_Addr_A[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0CCC"
    )
        port map (
      I0 => \histo_Addr_A[9]\(6),
      I1 => Q(6),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \histo_Addr_A[3]\(2),
      O => histo_Addr_A(6)
    );
\histo_Addr_A[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0CCC"
    )
        port map (
      I0 => \histo_Addr_A[9]\(7),
      I1 => Q(7),
      I2 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \histo_Addr_A[3]\(2),
      O => histo_Addr_A(7)
    );
\histo_WEN_A[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFEF0000"
    )
        port map (
      I0 => Q(0),
      I1 => \^idxhist_fu_32_reg[6]\,
      I2 => Q(8),
      I3 => Q(1),
      I4 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      I5 => ap_loop_init_int,
      O => \^e\(0)
    );
\histo_WEN_A[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(4),
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(2),
      O => \^idxhist_fu_32_reg[6]\
    );
\idxHist_fu_32[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFAAFB"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => Q(8),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^idxhist_fu_32_reg[6]\,
      O => D(0)
    );
\idxHist_fu_32[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => Q(1),
      O => D(1)
    );
\idxHist_fu_32[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1230"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => Q(2),
      I3 => Q(0),
      O => D(2)
    );
\idxHist_fu_32[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => ap_loop_init_int,
      I4 => Q(3),
      O => D(3)
    );
\idxHist_fu_32[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F800000FF000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(4),
      I4 => \idxHist_fu_32[8]_i_4_n_0\,
      I5 => Q(1),
      O => D(4)
    );
\idxHist_fu_32[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090C"
    )
        port map (
      I0 => \idxHist_fu_32_reg[5]\,
      I1 => Q(5),
      I2 => ap_loop_init_int,
      I3 => Q(1),
      O => D(5)
    );
\idxHist_fu_32[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090C"
    )
        port map (
      I0 => \idxHist_fu_32_reg[6]_0\,
      I1 => Q(6),
      I2 => ap_loop_init_int,
      I3 => Q(1),
      O => D(6)
    );
\idxHist_fu_32[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090C"
    )
        port map (
      I0 => \idxHist_fu_32_reg[8]\,
      I1 => Q(7),
      I2 => ap_loop_init_int,
      I3 => Q(1),
      O => D(7)
    );
\idxHist_fu_32[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD002200F0000000"
    )
        port map (
      I0 => Q(7),
      I1 => \idxHist_fu_32_reg[8]\,
      I2 => \idxHist_fu_32_reg[8]_0\,
      I3 => \idxHist_fu_32[8]_i_4_n_0\,
      I4 => Q(8),
      I5 => Q(1),
      O => D(8)
    );
\idxHist_fu_32[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      O => \idxHist_fu_32[8]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0_doHist_regslice_both is
  port (
    \B_V_data_1_state_reg[1]_0\ : out STD_LOGIC;
    B_V_data_1_sel : out STD_LOGIC;
    inStream_TVALID_int_regslice : out STD_LOGIC;
    histo_Addr_B : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \B_V_data_1_payload_A_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    B_V_data_1_sel_rd_reg_0 : in STD_LOGIC;
    B_V_data_1_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    B_V_data_1_sel_rd_reg_1 : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    \B_V_data_1_state_reg[0]_0\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_0 : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_1 : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_2 : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_3 : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_4 : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_i_2_0 : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_i_2_1 : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_i_2_2 : in STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_doHist_0_0_doHist_regslice_both : entity is "doHist_regslice_both";
end design_1_doHist_0_0_doHist_regslice_both;

architecture STRUCTURE of design_1_doHist_0_0_doHist_regslice_both is
  signal B_V_data_1_load_A : STD_LOGIC;
  signal B_V_data_1_load_B : STD_LOGIC;
  signal \^b_v_data_1_payload_a_reg[4]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \B_V_data_1_payload_A_reg_n_0_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_0_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_0_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_A_reg_n_0_[7]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_0_[2]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_0_[5]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_0_[6]\ : STD_LOGIC;
  signal \B_V_data_1_payload_B_reg_n_0_[7]\ : STD_LOGIC;
  signal \^b_v_data_1_sel\ : STD_LOGIC;
  signal B_V_data_1_sel_wr : STD_LOGIC;
  signal B_V_data_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \B_V_data_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \^b_v_data_1_state_reg[1]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addr_cmp_fu_150_p2_carry_i_5_n_0 : STD_LOGIC;
  signal addr_cmp_fu_150_p2_carry_i_6_n_0 : STD_LOGIC;
  signal \^instream_tvalid_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \histo_Addr_B[2]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \histo_Addr_B[3]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \histo_Addr_B[4]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \histo_Addr_B[5]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \histo_Addr_B[6]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \histo_Addr_B[7]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \histo_Addr_B[8]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \histo_Addr_B[9]_INST_0\ : label is "soft_lutpair32";
begin
  \B_V_data_1_payload_A_reg[4]_0\(3 downto 0) <= \^b_v_data_1_payload_a_reg[4]_0\(3 downto 0);
  B_V_data_1_sel <= \^b_v_data_1_sel\;
  \B_V_data_1_state_reg[1]_0\ <= \^b_v_data_1_state_reg[1]_0\;
  Q(3 downto 0) <= \^q\(3 downto 0);
  inStream_TVALID_int_regslice <= \^instream_tvalid_int_regslice\;
\B_V_data_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^instream_tvalid_int_regslice\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_load_A
    );
\B_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(0),
      Q => \^b_v_data_1_payload_a_reg[4]_0\(0),
      R => '0'
    );
\B_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(1),
      Q => \^b_v_data_1_payload_a_reg[4]_0\(1),
      R => '0'
    );
\B_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(2),
      Q => \B_V_data_1_payload_A_reg_n_0_[2]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(3),
      Q => \^b_v_data_1_payload_a_reg[4]_0\(2),
      R => '0'
    );
\B_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(4),
      Q => \^b_v_data_1_payload_a_reg[4]_0\(3),
      R => '0'
    );
\B_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(5),
      Q => \B_V_data_1_payload_A_reg_n_0_[5]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(6),
      Q => \B_V_data_1_payload_A_reg_n_0_[6]\,
      R => '0'
    );
\B_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_A,
      D => inStream_TDATA(7),
      Q => \B_V_data_1_payload_A_reg_n_0_[7]\,
      R => '0'
    );
\B_V_data_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^instream_tvalid_int_regslice\,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_load_B
    );
\B_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(0),
      Q => \^q\(0),
      R => '0'
    );
\B_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(1),
      Q => \^q\(1),
      R => '0'
    );
\B_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(2),
      Q => \B_V_data_1_payload_B_reg_n_0_[2]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(3),
      Q => \^q\(2),
      R => '0'
    );
\B_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(4),
      Q => \^q\(3),
      R => '0'
    );
\B_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(5),
      Q => \B_V_data_1_payload_B_reg_n_0_[5]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(6),
      Q => \B_V_data_1_payload_B_reg_n_0_[6]\,
      R => '0'
    );
\B_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => B_V_data_1_load_B,
      D => inStream_TDATA(7),
      Q => \B_V_data_1_payload_B_reg_n_0_[7]\,
      R => '0'
    );
B_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_rd_reg_1,
      Q => \^b_v_data_1_sel\,
      R => B_V_data_1_sel_rd_reg_0
    );
B_V_data_1_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_TVALID,
      I1 => \^b_v_data_1_state_reg[1]_0\,
      I2 => B_V_data_1_sel_wr,
      O => B_V_data_1_sel_wr_i_1_n_0
    );
B_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_sel_wr_i_1_n_0,
      Q => B_V_data_1_sel_wr,
      R => B_V_data_1_sel_rd_reg_0
    );
\B_V_data_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD008800"
    )
        port map (
      I0 => \^b_v_data_1_state_reg[1]_0\,
      I1 => inStream_TVALID,
      I2 => \B_V_data_1_state_reg[0]_0\,
      I3 => ap_rst_n,
      I4 => \^instream_tvalid_int_regslice\,
      O => \B_V_data_1_state[0]_i_1_n_0\
    );
\B_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \B_V_data_1_state[0]_i_1_n_0\,
      Q => \^instream_tvalid_int_regslice\,
      R => '0'
    );
\B_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => B_V_data_1_state(0),
      Q => \^b_v_data_1_state_reg[1]_0\,
      R => B_V_data_1_sel_rd_reg_0
    );
addr_cmp_fu_150_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => addr_cmp_fu_150_p2_carry_i_5_n_0,
      I1 => addr_cmp_fu_150_p2_carry_i_6_n_0,
      O => S(2)
    );
addr_cmp_fu_150_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484F00F84840000"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[5]\,
      I1 => addr_cmp_fu_150_p2_carry_2,
      I2 => addr_cmp_fu_150_p2_carry_3,
      I3 => \B_V_data_1_payload_A_reg_n_0_[5]\,
      I4 => \^b_v_data_1_sel\,
      I5 => addr_cmp_fu_150_p2_carry_4,
      O => S(1)
    );
addr_cmp_fu_150_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484F00F84840000"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[2]\,
      I1 => addr_cmp_fu_150_p2_carry,
      I2 => addr_cmp_fu_150_p2_carry_0,
      I3 => \B_V_data_1_payload_A_reg_n_0_[2]\,
      I4 => \^b_v_data_1_sel\,
      I5 => addr_cmp_fu_150_p2_carry_1,
      O => S(0)
    );
addr_cmp_fu_150_p2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090000000000090"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[7]\,
      I1 => addr_cmp_fu_150_p2_carry_i_2_0,
      I2 => \^b_v_data_1_sel\,
      I3 => addr_cmp_fu_150_p2_carry_i_2_1,
      I4 => addr_cmp_fu_150_p2_carry_i_2_2,
      I5 => \B_V_data_1_payload_B_reg_n_0_[6]\,
      O => addr_cmp_fu_150_p2_carry_i_5_n_0
    );
addr_cmp_fu_150_p2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009000000000009"
    )
        port map (
      I0 => \B_V_data_1_payload_A_reg_n_0_[7]\,
      I1 => addr_cmp_fu_150_p2_carry_i_2_0,
      I2 => \^b_v_data_1_sel\,
      I3 => addr_cmp_fu_150_p2_carry_i_2_1,
      I4 => addr_cmp_fu_150_p2_carry_i_2_2,
      I5 => \B_V_data_1_payload_A_reg_n_0_[6]\,
      O => addr_cmp_fu_150_p2_carry_i_6_n_0
    );
\histo_Addr_B[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[4]_0\(0),
      O => histo_Addr_B(0)
    );
\histo_Addr_B[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[4]_0\(1),
      O => histo_Addr_B(1)
    );
\histo_Addr_B[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[2]\,
      I1 => \^b_v_data_1_sel\,
      I2 => \B_V_data_1_payload_A_reg_n_0_[2]\,
      O => histo_Addr_B(2)
    );
\histo_Addr_B[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[4]_0\(2),
      O => histo_Addr_B(3)
    );
\histo_Addr_B[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^b_v_data_1_sel\,
      I2 => \^b_v_data_1_payload_a_reg[4]_0\(3),
      O => histo_Addr_B(4)
    );
\histo_Addr_B[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[5]\,
      I1 => \^b_v_data_1_sel\,
      I2 => \B_V_data_1_payload_A_reg_n_0_[5]\,
      O => histo_Addr_B(5)
    );
\histo_Addr_B[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[6]\,
      I1 => \^b_v_data_1_sel\,
      I2 => \B_V_data_1_payload_A_reg_n_0_[6]\,
      O => histo_Addr_B(6)
    );
\histo_Addr_B[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_V_data_1_payload_B_reg_n_0_[7]\,
      I1 => \^b_v_data_1_sel\,
      I2 => \B_V_data_1_payload_A_reg_n_0_[7]\,
      O => histo_Addr_B(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_12_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_reg1 : out STD_LOGIC;
    histo_Addr_A : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_done_cache_reg : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \histo_Addr_A[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_12_1 : entity is "doHist_doHist_Pipeline_VITIS_LOOP_12_1";
end design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_12_1;

architecture STRUCTURE of design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_12_1 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal flow_control_loop_pipe_sequential_init_U_n_12 : STD_LOGIC;
  signal \idxHist_fu_32[5]_i_2_n_0\ : STD_LOGIC;
  signal \idxHist_fu_32[6]_i_2_n_0\ : STD_LOGIC;
  signal \idxHist_fu_32[8]_i_2_n_0\ : STD_LOGIC;
  signal \idxHist_fu_32[8]_i_3_n_0\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[0]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[1]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[2]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[3]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[4]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[5]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[6]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[7]\ : STD_LOGIC;
  signal \idxHist_fu_32_reg_n_0_[8]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \idxHist_fu_32[5]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \idxHist_fu_32[6]_i_2\ : label is "soft_lutpair12";
begin
  E(0) <= \^e\(0);
flow_control_loop_pipe_sequential_init_U: entity work.design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init_0
     port map (
      D(8 downto 0) => p_0_in(8 downto 0),
      E(0) => \^e\(0),
      Q(8) => \idxHist_fu_32_reg_n_0_[8]\,
      Q(7) => \idxHist_fu_32_reg_n_0_[7]\,
      Q(6) => \idxHist_fu_32_reg_n_0_[6]\,
      Q(5) => \idxHist_fu_32_reg_n_0_[5]\,
      Q(4) => \idxHist_fu_32_reg_n_0_[4]\,
      Q(3) => \idxHist_fu_32_reg_n_0_[3]\,
      Q(2) => \idxHist_fu_32_reg_n_0_[2]\,
      Q(1) => \idxHist_fu_32_reg_n_0_[1]\,
      Q(0) => \idxHist_fu_32_reg_n_0_[0]\,
      \ap_CS_fsm_reg[1]\(1 downto 0) => D(1 downto 0),
      ap_clk => ap_clk,
      ap_done_cache_reg_0 => ap_done_cache_reg,
      ap_loop_init_int_reg_0 => ap_done_reg1,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      histo_Addr_A(8 downto 0) => histo_Addr_A(8 downto 0),
      \histo_Addr_A[3]\(2 downto 0) => Q(2 downto 0),
      \histo_Addr_A[9]\(7 downto 0) => \histo_Addr_A[9]\(7 downto 0),
      \idxHist_fu_32_reg[5]\ => \idxHist_fu_32[5]_i_2_n_0\,
      \idxHist_fu_32_reg[6]\ => flow_control_loop_pipe_sequential_init_U_n_12,
      \idxHist_fu_32_reg[6]_0\ => \idxHist_fu_32[6]_i_2_n_0\,
      \idxHist_fu_32_reg[8]\ => \idxHist_fu_32[8]_i_2_n_0\,
      \idxHist_fu_32_reg[8]_0\ => \idxHist_fu_32[8]_i_3_n_0\
    );
\idxHist_fu_32[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \idxHist_fu_32_reg_n_0_[3]\,
      I1 => \idxHist_fu_32_reg_n_0_[0]\,
      I2 => \idxHist_fu_32_reg_n_0_[2]\,
      I3 => \idxHist_fu_32_reg_n_0_[4]\,
      O => \idxHist_fu_32[5]_i_2_n_0\
    );
\idxHist_fu_32[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \idxHist_fu_32_reg_n_0_[4]\,
      I1 => \idxHist_fu_32_reg_n_0_[2]\,
      I2 => \idxHist_fu_32_reg_n_0_[0]\,
      I3 => \idxHist_fu_32_reg_n_0_[3]\,
      I4 => \idxHist_fu_32_reg_n_0_[5]\,
      O => \idxHist_fu_32[6]_i_2_n_0\
    );
\idxHist_fu_32[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \idxHist_fu_32_reg_n_0_[5]\,
      I1 => \idxHist_fu_32_reg_n_0_[3]\,
      I2 => \idxHist_fu_32_reg_n_0_[0]\,
      I3 => \idxHist_fu_32_reg_n_0_[2]\,
      I4 => \idxHist_fu_32_reg_n_0_[4]\,
      I5 => \idxHist_fu_32_reg_n_0_[6]\,
      O => \idxHist_fu_32[8]_i_2_n_0\
    );
\idxHist_fu_32[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => flow_control_loop_pipe_sequential_init_U_n_12,
      I1 => \idxHist_fu_32_reg_n_0_[0]\,
      O => \idxHist_fu_32[8]_i_3_n_0\
    );
\idxHist_fu_32_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(0),
      Q => \idxHist_fu_32_reg_n_0_[0]\,
      R => '0'
    );
\idxHist_fu_32_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(1),
      Q => \idxHist_fu_32_reg_n_0_[1]\,
      R => '0'
    );
\idxHist_fu_32_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(2),
      Q => \idxHist_fu_32_reg_n_0_[2]\,
      R => '0'
    );
\idxHist_fu_32_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(3),
      Q => \idxHist_fu_32_reg_n_0_[3]\,
      R => '0'
    );
\idxHist_fu_32_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(4),
      Q => \idxHist_fu_32_reg_n_0_[4]\,
      R => '0'
    );
\idxHist_fu_32_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(5),
      Q => \idxHist_fu_32_reg_n_0_[5]\,
      R => '0'
    );
\idxHist_fu_32_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(6),
      Q => \idxHist_fu_32_reg_n_0_[6]\,
      R => '0'
    );
\idxHist_fu_32_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(7),
      Q => \idxHist_fu_32_reg_n_0_[7]\,
      R => '0'
    );
\idxHist_fu_32_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => p_0_in(8),
      Q => \idxHist_fu_32_reg_n_0_[8]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_19_2 is
  port (
    histo_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    histo_EN_B : out STD_LOGIC;
    B_V_data_1_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln19_reg_202_reg[0]_0\ : out STD_LOGIC;
    histo_EN_A : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[0]_0\ : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[0]_1\ : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[3]_0\ : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[3]_1\ : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[8]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    \icmp_ln19_reg_202_reg[0]_1\ : out STD_LOGIC;
    histo_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \histo_addr_reg_206_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reuse_addr_reg_fu_56_reg[7]_0\ : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[6]_0\ : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[5]_0\ : out STD_LOGIC;
    \reuse_addr_reg_fu_56_reg[2]_0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_done_cache_reg : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_rst_n : in STD_LOGIC;
    inStream_TVALID_int_regslice : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg : in STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    \B_V_data_1_state_reg[1]\ : in STD_LOGIC;
    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg : in STD_LOGIC;
    addr_cmp_fu_150_p2_carry_i_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addr_cmp_fu_150_p2_carry_i_3_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B_V_data_1_sel : in STD_LOGIC;
    histo_Addr_B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    histo_Dout_B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_19_2 : entity is "doHist_doHist_Pipeline_VITIS_LOOP_19_2";
end design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_19_2;

architecture STRUCTURE of design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_19_2 is
  signal \B_V_data_1_state[1]_i_2_n_0\ : STD_LOGIC;
  signal add_ln26_fu_171_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \add_ln26_fu_171_p2_carry__0_n_0\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__1_n_0\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__1_n_1\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__1_n_2\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__1_n_3\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__2_n_0\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__2_n_1\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__2_n_2\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__2_n_3\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__3_n_0\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__3_n_1\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__3_n_2\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__3_n_3\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__4_n_0\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__4_n_1\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__4_n_2\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__4_n_3\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__5_n_0\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__5_n_1\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__5_n_2\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__5_n_3\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__6_n_2\ : STD_LOGIC;
  signal \add_ln26_fu_171_p2_carry__6_n_3\ : STD_LOGIC;
  signal add_ln26_fu_171_p2_carry_n_0 : STD_LOGIC;
  signal add_ln26_fu_171_p2_carry_n_1 : STD_LOGIC;
  signal add_ln26_fu_171_p2_carry_n_2 : STD_LOGIC;
  signal add_ln26_fu_171_p2_carry_n_3 : STD_LOGIC;
  signal add_ln26_reg_217 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal addr_cmp_fu_150_p2 : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_n_1\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_n_2\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__0_n_3\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_n_1\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_n_2\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__1_n_3\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_n_1\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_n_2\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__2_n_3\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_n_1\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_n_2\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__3_n_3\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \addr_cmp_fu_150_p2_carry__4_n_3\ : STD_LOGIC;
  signal addr_cmp_fu_150_p2_carry_i_1_n_0 : STD_LOGIC;
  signal addr_cmp_fu_150_p2_carry_n_0 : STD_LOGIC;
  signal addr_cmp_fu_150_p2_carry_n_1 : STD_LOGIC;
  signal addr_cmp_fu_150_p2_carry_n_2 : STD_LOGIC;
  signal addr_cmp_fu_150_p2_carry_n_3 : STD_LOGIC;
  signal addr_cmp_reg_212 : STD_LOGIC;
  signal addr_cmp_reg_2120 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter10 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_sig_allocacmp_idxPixel_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal ap_sig_allocacmp_idxPixel_11 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_26 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A : STD_LOGIC_VECTOR ( 0 to 0 );
  signal icmp_ln19_fu_121_p2 : STD_LOGIC;
  signal \icmp_ln19_reg_202_reg_n_0_[0]\ : STD_LOGIC;
  signal idxPixel_2_fu_127_p2 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \idxPixel_2_fu_127_p2_carry__0_n_0\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__0_n_1\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__0_n_2\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__0_n_3\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__1_n_0\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__1_n_1\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__1_n_2\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__1_n_3\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__2_n_1\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__2_n_2\ : STD_LOGIC;
  signal \idxPixel_2_fu_127_p2_carry__2_n_3\ : STD_LOGIC;
  signal idxPixel_2_fu_127_p2_carry_n_0 : STD_LOGIC;
  signal idxPixel_2_fu_127_p2_carry_n_1 : STD_LOGIC;
  signal idxPixel_2_fu_127_p2_carry_n_2 : STD_LOGIC;
  signal idxPixel_2_fu_127_p2_carry_n_3 : STD_LOGIC;
  signal idxPixel_fu_64 : STD_LOGIC;
  signal \idxPixel_fu_64[16]_i_2_n_0\ : STD_LOGIC;
  signal \idxPixel_fu_64[16]_i_3_n_0\ : STD_LOGIC;
  signal \idxPixel_fu_64[16]_i_4_n_0\ : STD_LOGIC;
  signal \idxPixel_fu_64[16]_i_5_n_0\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[0]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[10]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[11]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[12]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[13]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[14]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[15]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[16]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[1]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[2]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[3]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[4]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[5]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[6]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[7]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[8]\ : STD_LOGIC;
  signal \idxPixel_fu_64_reg_n_0_[9]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_56[8]_i_1_n_0\ : STD_LOGIC;
  signal \^reuse_addr_reg_fu_56_reg[8]_0\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_56_reg_n_0_[0]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_56_reg_n_0_[1]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_56_reg_n_0_[3]\ : STD_LOGIC;
  signal \reuse_addr_reg_fu_56_reg_n_0_[4]\ : STD_LOGIC;
  signal reuse_reg_fu_60 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reuse_select_fu_164_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_add_ln26_fu_171_p2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln26_fu_171_p2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_addr_cmp_fu_150_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_addr_cmp_fu_150_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_addr_cmp_fu_150_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_addr_cmp_fu_150_p2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_addr_cmp_fu_150_p2_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_addr_cmp_fu_150_p2_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_addr_cmp_fu_150_p2_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_idxPixel_2_fu_127_p2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of add_ln26_fu_171_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \add_ln26_fu_171_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln26_fu_171_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln26_fu_171_p2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln26_fu_171_p2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln26_fu_171_p2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln26_fu_171_p2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln26_fu_171_p2_carry__6\ : label is 35;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \histo_Din_A[0]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \histo_Din_A[10]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \histo_Din_A[11]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \histo_Din_A[12]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \histo_Din_A[13]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \histo_Din_A[14]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \histo_Din_A[15]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \histo_Din_A[16]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \histo_Din_A[17]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \histo_Din_A[18]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \histo_Din_A[19]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \histo_Din_A[1]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \histo_Din_A[20]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \histo_Din_A[21]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \histo_Din_A[22]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \histo_Din_A[23]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \histo_Din_A[24]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \histo_Din_A[25]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \histo_Din_A[26]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \histo_Din_A[27]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \histo_Din_A[28]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \histo_Din_A[29]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \histo_Din_A[2]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \histo_Din_A[30]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \histo_Din_A[31]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \histo_Din_A[3]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \histo_Din_A[4]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \histo_Din_A[5]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \histo_Din_A[6]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \histo_Din_A[7]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \histo_Din_A[8]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \histo_Din_A[9]_INST_0\ : label is "soft_lutpair27";
  attribute ADDER_THRESHOLD of idxPixel_2_fu_127_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \idxPixel_2_fu_127_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \idxPixel_2_fu_127_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \idxPixel_2_fu_127_p2_carry__2\ : label is 35;
begin
  \reuse_addr_reg_fu_56_reg[8]_0\ <= \^reuse_addr_reg_fu_56_reg[8]_0\;
B_V_data_1_sel_rd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_CS_fsm_pp0_stage1,
      I3 => Q(2),
      I4 => inStream_TVALID_int_regslice,
      I5 => B_V_data_1_sel,
      O => \icmp_ln19_reg_202_reg[0]_1\
    );
\B_V_data_1_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I4 => ap_CS_fsm_pp0_stage1,
      I5 => Q(2),
      O => \icmp_ln19_reg_202_reg[0]_0\
    );
\B_V_data_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFF10FF10FF"
    )
        port map (
      I0 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I1 => \B_V_data_1_state[1]_i_2_n_0\,
      I2 => Q(2),
      I3 => inStream_TVALID_int_regslice,
      I4 => inStream_TVALID,
      I5 => \B_V_data_1_state_reg[1]\,
      O => B_V_data_1_state(0)
    );
\B_V_data_1_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => ap_CS_fsm_pp0_stage1,
      O => \B_V_data_1_state[1]_i_2_n_0\
    );
add_ln26_fu_171_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => add_ln26_fu_171_p2_carry_n_0,
      CO(2) => add_ln26_fu_171_p2_carry_n_1,
      CO(1) => add_ln26_fu_171_p2_carry_n_2,
      CO(0) => add_ln26_fu_171_p2_carry_n_3,
      CYINIT => reuse_select_fu_164_p3(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln26_fu_171_p2(4 downto 1),
      S(3 downto 0) => reuse_select_fu_164_p3(4 downto 1)
    );
\add_ln26_fu_171_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => add_ln26_fu_171_p2_carry_n_0,
      CO(3) => \add_ln26_fu_171_p2_carry__0_n_0\,
      CO(2) => \add_ln26_fu_171_p2_carry__0_n_1\,
      CO(1) => \add_ln26_fu_171_p2_carry__0_n_2\,
      CO(0) => \add_ln26_fu_171_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln26_fu_171_p2(8 downto 5),
      S(3 downto 0) => reuse_select_fu_164_p3(8 downto 5)
    );
\add_ln26_fu_171_p2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(8),
      I1 => histo_Dout_B(8),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(8)
    );
\add_ln26_fu_171_p2_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(7),
      I1 => histo_Dout_B(7),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(7)
    );
\add_ln26_fu_171_p2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(6),
      I1 => histo_Dout_B(6),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(6)
    );
\add_ln26_fu_171_p2_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(5),
      I1 => histo_Dout_B(5),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(5)
    );
\add_ln26_fu_171_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln26_fu_171_p2_carry__0_n_0\,
      CO(3) => \add_ln26_fu_171_p2_carry__1_n_0\,
      CO(2) => \add_ln26_fu_171_p2_carry__1_n_1\,
      CO(1) => \add_ln26_fu_171_p2_carry__1_n_2\,
      CO(0) => \add_ln26_fu_171_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln26_fu_171_p2(12 downto 9),
      S(3 downto 0) => reuse_select_fu_164_p3(12 downto 9)
    );
\add_ln26_fu_171_p2_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(12),
      I1 => histo_Dout_B(12),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(12)
    );
\add_ln26_fu_171_p2_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(11),
      I1 => histo_Dout_B(11),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(11)
    );
\add_ln26_fu_171_p2_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(10),
      I1 => histo_Dout_B(10),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(10)
    );
\add_ln26_fu_171_p2_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(9),
      I1 => histo_Dout_B(9),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(9)
    );
\add_ln26_fu_171_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln26_fu_171_p2_carry__1_n_0\,
      CO(3) => \add_ln26_fu_171_p2_carry__2_n_0\,
      CO(2) => \add_ln26_fu_171_p2_carry__2_n_1\,
      CO(1) => \add_ln26_fu_171_p2_carry__2_n_2\,
      CO(0) => \add_ln26_fu_171_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln26_fu_171_p2(16 downto 13),
      S(3 downto 0) => reuse_select_fu_164_p3(16 downto 13)
    );
\add_ln26_fu_171_p2_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(16),
      I1 => histo_Dout_B(16),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(16)
    );
\add_ln26_fu_171_p2_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(15),
      I1 => histo_Dout_B(15),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(15)
    );
\add_ln26_fu_171_p2_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(14),
      I1 => histo_Dout_B(14),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(14)
    );
\add_ln26_fu_171_p2_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(13),
      I1 => histo_Dout_B(13),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(13)
    );
\add_ln26_fu_171_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln26_fu_171_p2_carry__2_n_0\,
      CO(3) => \add_ln26_fu_171_p2_carry__3_n_0\,
      CO(2) => \add_ln26_fu_171_p2_carry__3_n_1\,
      CO(1) => \add_ln26_fu_171_p2_carry__3_n_2\,
      CO(0) => \add_ln26_fu_171_p2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln26_fu_171_p2(20 downto 17),
      S(3 downto 0) => reuse_select_fu_164_p3(20 downto 17)
    );
\add_ln26_fu_171_p2_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(20),
      I1 => histo_Dout_B(20),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(20)
    );
\add_ln26_fu_171_p2_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(19),
      I1 => histo_Dout_B(19),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(19)
    );
\add_ln26_fu_171_p2_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(18),
      I1 => histo_Dout_B(18),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(18)
    );
\add_ln26_fu_171_p2_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(17),
      I1 => histo_Dout_B(17),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(17)
    );
\add_ln26_fu_171_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln26_fu_171_p2_carry__3_n_0\,
      CO(3) => \add_ln26_fu_171_p2_carry__4_n_0\,
      CO(2) => \add_ln26_fu_171_p2_carry__4_n_1\,
      CO(1) => \add_ln26_fu_171_p2_carry__4_n_2\,
      CO(0) => \add_ln26_fu_171_p2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln26_fu_171_p2(24 downto 21),
      S(3 downto 0) => reuse_select_fu_164_p3(24 downto 21)
    );
\add_ln26_fu_171_p2_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(24),
      I1 => histo_Dout_B(24),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(24)
    );
\add_ln26_fu_171_p2_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(23),
      I1 => histo_Dout_B(23),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(23)
    );
\add_ln26_fu_171_p2_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(22),
      I1 => histo_Dout_B(22),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(22)
    );
\add_ln26_fu_171_p2_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(21),
      I1 => histo_Dout_B(21),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(21)
    );
\add_ln26_fu_171_p2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln26_fu_171_p2_carry__4_n_0\,
      CO(3) => \add_ln26_fu_171_p2_carry__5_n_0\,
      CO(2) => \add_ln26_fu_171_p2_carry__5_n_1\,
      CO(1) => \add_ln26_fu_171_p2_carry__5_n_2\,
      CO(0) => \add_ln26_fu_171_p2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln26_fu_171_p2(28 downto 25),
      S(3 downto 0) => reuse_select_fu_164_p3(28 downto 25)
    );
\add_ln26_fu_171_p2_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(28),
      I1 => histo_Dout_B(28),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(28)
    );
\add_ln26_fu_171_p2_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(27),
      I1 => histo_Dout_B(27),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(27)
    );
\add_ln26_fu_171_p2_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(26),
      I1 => histo_Dout_B(26),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(26)
    );
\add_ln26_fu_171_p2_carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(25),
      I1 => histo_Dout_B(25),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(25)
    );
\add_ln26_fu_171_p2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln26_fu_171_p2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_add_ln26_fu_171_p2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \add_ln26_fu_171_p2_carry__6_n_2\,
      CO(0) => \add_ln26_fu_171_p2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_add_ln26_fu_171_p2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => add_ln26_fu_171_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => reuse_select_fu_164_p3(31 downto 29)
    );
\add_ln26_fu_171_p2_carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(31),
      I1 => histo_Dout_B(31),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(31)
    );
\add_ln26_fu_171_p2_carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(30),
      I1 => histo_Dout_B(30),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(30)
    );
\add_ln26_fu_171_p2_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(29),
      I1 => histo_Dout_B(29),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(29)
    );
add_ln26_fu_171_p2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(0),
      I1 => histo_Dout_B(0),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(0)
    );
add_ln26_fu_171_p2_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(4),
      I1 => histo_Dout_B(4),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(4)
    );
add_ln26_fu_171_p2_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(3),
      I1 => histo_Dout_B(3),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(3)
    );
add_ln26_fu_171_p2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(2),
      I1 => histo_Dout_B(2),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(2)
    );
add_ln26_fu_171_p2_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reuse_reg_fu_60(1),
      I1 => histo_Dout_B(1),
      I2 => addr_cmp_reg_212,
      O => reuse_select_fu_164_p3(1)
    );
\add_ln26_reg_217[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => addr_cmp_reg_212,
      I1 => histo_Dout_B(0),
      I2 => reuse_reg_fu_60(0),
      O => add_ln26_fu_171_p2(0)
    );
\add_ln26_reg_217_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(0),
      Q => add_ln26_reg_217(0),
      R => '0'
    );
\add_ln26_reg_217_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(10),
      Q => add_ln26_reg_217(10),
      R => '0'
    );
\add_ln26_reg_217_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(11),
      Q => add_ln26_reg_217(11),
      R => '0'
    );
\add_ln26_reg_217_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(12),
      Q => add_ln26_reg_217(12),
      R => '0'
    );
\add_ln26_reg_217_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(13),
      Q => add_ln26_reg_217(13),
      R => '0'
    );
\add_ln26_reg_217_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(14),
      Q => add_ln26_reg_217(14),
      R => '0'
    );
\add_ln26_reg_217_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(15),
      Q => add_ln26_reg_217(15),
      R => '0'
    );
\add_ln26_reg_217_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(16),
      Q => add_ln26_reg_217(16),
      R => '0'
    );
\add_ln26_reg_217_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(17),
      Q => add_ln26_reg_217(17),
      R => '0'
    );
\add_ln26_reg_217_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(18),
      Q => add_ln26_reg_217(18),
      R => '0'
    );
\add_ln26_reg_217_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(19),
      Q => add_ln26_reg_217(19),
      R => '0'
    );
\add_ln26_reg_217_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(1),
      Q => add_ln26_reg_217(1),
      R => '0'
    );
\add_ln26_reg_217_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(20),
      Q => add_ln26_reg_217(20),
      R => '0'
    );
\add_ln26_reg_217_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(21),
      Q => add_ln26_reg_217(21),
      R => '0'
    );
\add_ln26_reg_217_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(22),
      Q => add_ln26_reg_217(22),
      R => '0'
    );
\add_ln26_reg_217_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(23),
      Q => add_ln26_reg_217(23),
      R => '0'
    );
\add_ln26_reg_217_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(24),
      Q => add_ln26_reg_217(24),
      R => '0'
    );
\add_ln26_reg_217_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(25),
      Q => add_ln26_reg_217(25),
      R => '0'
    );
\add_ln26_reg_217_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(26),
      Q => add_ln26_reg_217(26),
      R => '0'
    );
\add_ln26_reg_217_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(27),
      Q => add_ln26_reg_217(27),
      R => '0'
    );
\add_ln26_reg_217_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(28),
      Q => add_ln26_reg_217(28),
      R => '0'
    );
\add_ln26_reg_217_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(29),
      Q => add_ln26_reg_217(29),
      R => '0'
    );
\add_ln26_reg_217_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(2),
      Q => add_ln26_reg_217(2),
      R => '0'
    );
\add_ln26_reg_217_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(30),
      Q => add_ln26_reg_217(30),
      R => '0'
    );
\add_ln26_reg_217_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(31),
      Q => add_ln26_reg_217(31),
      R => '0'
    );
\add_ln26_reg_217_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(3),
      Q => add_ln26_reg_217(3),
      R => '0'
    );
\add_ln26_reg_217_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(4),
      Q => add_ln26_reg_217(4),
      R => '0'
    );
\add_ln26_reg_217_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(5),
      Q => add_ln26_reg_217(5),
      R => '0'
    );
\add_ln26_reg_217_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(6),
      Q => add_ln26_reg_217(6),
      R => '0'
    );
\add_ln26_reg_217_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(7),
      Q => add_ln26_reg_217(7),
      R => '0'
    );
\add_ln26_reg_217_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(8),
      Q => add_ln26_reg_217(8),
      R => '0'
    );
\add_ln26_reg_217_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => add_ln26_fu_171_p2(9),
      Q => add_ln26_reg_217(9),
      R => '0'
    );
addr_cmp_fu_150_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addr_cmp_fu_150_p2_carry_n_0,
      CO(2) => addr_cmp_fu_150_p2_carry_n_1,
      CO(1) => addr_cmp_fu_150_p2_carry_n_2,
      CO(0) => addr_cmp_fu_150_p2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_addr_cmp_fu_150_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => addr_cmp_fu_150_p2_carry_i_1_n_0,
      S(2 downto 0) => S(2 downto 0)
    );
\addr_cmp_fu_150_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addr_cmp_fu_150_p2_carry_n_0,
      CO(3) => \addr_cmp_fu_150_p2_carry__0_n_0\,
      CO(2) => \addr_cmp_fu_150_p2_carry__0_n_1\,
      CO(1) => \addr_cmp_fu_150_p2_carry__0_n_2\,
      CO(0) => \addr_cmp_fu_150_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_addr_cmp_fu_150_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \addr_cmp_fu_150_p2_carry__0_i_1_n_0\,
      S(2) => \addr_cmp_fu_150_p2_carry__0_i_2_n_0\,
      S(1) => \addr_cmp_fu_150_p2_carry__0_i_3_n_0\,
      S(0) => \addr_cmp_fu_150_p2_carry__0_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__0_i_1_n_0\
    );
\addr_cmp_fu_150_p2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__0_i_2_n_0\
    );
\addr_cmp_fu_150_p2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__0_i_3_n_0\
    );
\addr_cmp_fu_150_p2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__0_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cmp_fu_150_p2_carry__0_n_0\,
      CO(3) => \addr_cmp_fu_150_p2_carry__1_n_0\,
      CO(2) => \addr_cmp_fu_150_p2_carry__1_n_1\,
      CO(1) => \addr_cmp_fu_150_p2_carry__1_n_2\,
      CO(0) => \addr_cmp_fu_150_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_addr_cmp_fu_150_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \addr_cmp_fu_150_p2_carry__1_i_1_n_0\,
      S(2) => \addr_cmp_fu_150_p2_carry__1_i_2_n_0\,
      S(1) => \addr_cmp_fu_150_p2_carry__1_i_3_n_0\,
      S(0) => \addr_cmp_fu_150_p2_carry__1_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__1_i_1_n_0\
    );
\addr_cmp_fu_150_p2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__1_i_2_n_0\
    );
\addr_cmp_fu_150_p2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__1_i_3_n_0\
    );
\addr_cmp_fu_150_p2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__1_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cmp_fu_150_p2_carry__1_n_0\,
      CO(3) => \addr_cmp_fu_150_p2_carry__2_n_0\,
      CO(2) => \addr_cmp_fu_150_p2_carry__2_n_1\,
      CO(1) => \addr_cmp_fu_150_p2_carry__2_n_2\,
      CO(0) => \addr_cmp_fu_150_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_addr_cmp_fu_150_p2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \addr_cmp_fu_150_p2_carry__2_i_1_n_0\,
      S(2) => \addr_cmp_fu_150_p2_carry__2_i_2_n_0\,
      S(1) => \addr_cmp_fu_150_p2_carry__2_i_3_n_0\,
      S(0) => \addr_cmp_fu_150_p2_carry__2_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__2_i_1_n_0\
    );
\addr_cmp_fu_150_p2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__2_i_2_n_0\
    );
\addr_cmp_fu_150_p2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__2_i_3_n_0\
    );
\addr_cmp_fu_150_p2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__2_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cmp_fu_150_p2_carry__2_n_0\,
      CO(3) => \addr_cmp_fu_150_p2_carry__3_n_0\,
      CO(2) => \addr_cmp_fu_150_p2_carry__3_n_1\,
      CO(1) => \addr_cmp_fu_150_p2_carry__3_n_2\,
      CO(0) => \addr_cmp_fu_150_p2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_addr_cmp_fu_150_p2_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \addr_cmp_fu_150_p2_carry__3_i_1_n_0\,
      S(2) => \addr_cmp_fu_150_p2_carry__3_i_2_n_0\,
      S(1) => \addr_cmp_fu_150_p2_carry__3_i_3_n_0\,
      S(0) => \addr_cmp_fu_150_p2_carry__3_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__3_i_1_n_0\
    );
\addr_cmp_fu_150_p2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__3_i_2_n_0\
    );
\addr_cmp_fu_150_p2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__3_i_3_n_0\
    );
\addr_cmp_fu_150_p2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__3_i_4_n_0\
    );
\addr_cmp_fu_150_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cmp_fu_150_p2_carry__3_n_0\,
      CO(3 downto 2) => \NLW_addr_cmp_fu_150_p2_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => addr_cmp_fu_150_p2,
      CO(0) => \addr_cmp_fu_150_p2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_addr_cmp_fu_150_p2_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \addr_cmp_fu_150_p2_carry__4_i_1_n_0\,
      S(0) => \addr_cmp_fu_150_p2_carry__4_i_2_n_0\
    );
\addr_cmp_fu_150_p2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__4_i_1_n_0\
    );
\addr_cmp_fu_150_p2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \addr_cmp_fu_150_p2_carry__4_i_2_n_0\
    );
addr_cmp_fu_150_p2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => addr_cmp_fu_150_p2_carry_i_1_n_0
    );
addr_cmp_fu_150_p2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_56_reg_n_0_[0]\,
      I1 => addr_cmp_fu_150_p2_carry_i_3(0),
      I2 => \reuse_addr_reg_fu_56_reg_n_0_[1]\,
      I3 => addr_cmp_fu_150_p2_carry_i_3(1),
      O => \reuse_addr_reg_fu_56_reg[0]_0\
    );
addr_cmp_fu_150_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_56_reg_n_0_[3]\,
      I1 => addr_cmp_fu_150_p2_carry_i_3_0(2),
      I2 => \reuse_addr_reg_fu_56_reg_n_0_[4]\,
      I3 => addr_cmp_fu_150_p2_carry_i_3_0(3),
      O => \reuse_addr_reg_fu_56_reg[3]_1\
    );
addr_cmp_fu_150_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_56_reg_n_0_[3]\,
      I1 => addr_cmp_fu_150_p2_carry_i_3(2),
      I2 => \reuse_addr_reg_fu_56_reg_n_0_[4]\,
      I3 => addr_cmp_fu_150_p2_carry_i_3(3),
      O => \reuse_addr_reg_fu_56_reg[3]_0\
    );
addr_cmp_fu_150_p2_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reuse_addr_reg_fu_56_reg_n_0_[0]\,
      I1 => addr_cmp_fu_150_p2_carry_i_3_0(0),
      I2 => \reuse_addr_reg_fu_56_reg_n_0_[1]\,
      I3 => addr_cmp_fu_150_p2_carry_i_3_0(1),
      O => \reuse_addr_reg_fu_56_reg[0]_1\
    );
\addr_cmp_reg_212_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => addr_cmp_fu_150_p2,
      Q => addr_cmp_reg_212,
      R => '0'
    );
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111FFF01111FFFF"
    )
        port map (
      I0 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I3 => inStream_TVALID_int_regslice,
      I4 => ap_CS_fsm_pp0_stage0,
      I5 => ap_enable_reg_pp0_iter0_reg,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE000FEEEE0000"
    )
        port map (
      I0 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => inStream_TVALID_int_regslice,
      I3 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I4 => ap_CS_fsm_pp0_stage0,
      I5 => ap_enable_reg_pp0_iter0_reg,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_pp0_stage0,
      S => ap_done_cache_reg
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage1,
      R => ap_done_cache_reg
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0,
      Q => ap_enable_reg_pp0_iter0_reg,
      R => ap_done_cache_reg
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A80000A0A0A0A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => inStream_TVALID_int_regslice,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => ap_CS_fsm_pp0_stage1,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_doHist_0_0_doHist_flow_control_loop_pipe_sequential_init
     port map (
      D(0) => D(0),
      Q(1 downto 0) => Q(2 downto 1),
      SR(0) => ap_sig_allocacmp_idxPixel_11,
      \ap_CS_fsm_reg[1]\ => flow_control_loop_pipe_sequential_init_U_n_3,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_done_cache_reg_0 => ap_done_cache_reg,
      ap_done_cache_reg_1(1) => ap_CS_fsm_pp0_stage1,
      ap_done_cache_reg_1(0) => ap_CS_fsm_pp0_stage0,
      ap_done_cache_reg_2 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_loop_init_int => ap_loop_init_int,
      ap_loop_init_int_reg_0 => flow_control_loop_pipe_sequential_init_U_n_26,
      ap_rst_n => ap_rst_n,
      ap_sig_allocacmp_idxPixel_1(16 downto 0) => ap_sig_allocacmp_idxPixel_1(16 downto 0),
      grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      icmp_ln19_fu_121_p2 => icmp_ln19_fu_121_p2,
      idxPixel_2_fu_127_p2(0) => idxPixel_2_fu_127_p2(0),
      idxPixel_fu_64 => idxPixel_fu_64,
      \idxPixel_fu_64_reg[0]\ => \idxPixel_fu_64[16]_i_2_n_0\,
      \idxPixel_fu_64_reg[0]_0\ => \idxPixel_fu_64[16]_i_3_n_0\,
      \idxPixel_fu_64_reg[0]_1\ => \idxPixel_fu_64_reg_n_0_[0]\,
      \idxPixel_fu_64_reg[12]\ => \idxPixel_fu_64_reg_n_0_[9]\,
      \idxPixel_fu_64_reg[12]_0\ => \idxPixel_fu_64_reg_n_0_[10]\,
      \idxPixel_fu_64_reg[12]_1\ => \idxPixel_fu_64_reg_n_0_[11]\,
      \idxPixel_fu_64_reg[12]_2\ => \idxPixel_fu_64_reg_n_0_[12]\,
      \idxPixel_fu_64_reg[16]\ => \idxPixel_fu_64_reg_n_0_[13]\,
      \idxPixel_fu_64_reg[16]_0\ => \idxPixel_fu_64_reg_n_0_[14]\,
      \idxPixel_fu_64_reg[16]_1\ => \idxPixel_fu_64_reg_n_0_[15]\,
      \idxPixel_fu_64_reg[16]_2\ => \idxPixel_fu_64_reg_n_0_[16]\,
      \idxPixel_fu_64_reg[4]\ => \idxPixel_fu_64_reg_n_0_[1]\,
      \idxPixel_fu_64_reg[4]_0\ => \idxPixel_fu_64_reg_n_0_[2]\,
      \idxPixel_fu_64_reg[4]_1\ => \idxPixel_fu_64_reg_n_0_[3]\,
      \idxPixel_fu_64_reg[4]_2\ => \idxPixel_fu_64_reg_n_0_[4]\,
      \idxPixel_fu_64_reg[8]\ => \idxPixel_fu_64_reg_n_0_[5]\,
      \idxPixel_fu_64_reg[8]_0\ => \idxPixel_fu_64_reg_n_0_[6]\,
      \idxPixel_fu_64_reg[8]_1\ => \idxPixel_fu_64_reg_n_0_[7]\,
      \idxPixel_fu_64_reg[8]_2\ => \idxPixel_fu_64_reg_n_0_[8]\,
      inStream_TVALID_int_regslice => inStream_TVALID_int_regslice
    );
grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFAAAAFFFFAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I5 => ap_CS_fsm_pp0_stage1,
      O => \ap_CS_fsm_reg[2]\
    );
\histo_Din_A[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(0),
      O => histo_Din_A(0)
    );
\histo_Din_A[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(10),
      O => histo_Din_A(10)
    );
\histo_Din_A[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(11),
      O => histo_Din_A(11)
    );
\histo_Din_A[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(12),
      O => histo_Din_A(12)
    );
\histo_Din_A[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(13),
      O => histo_Din_A(13)
    );
\histo_Din_A[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(14),
      O => histo_Din_A(14)
    );
\histo_Din_A[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(15),
      O => histo_Din_A(15)
    );
\histo_Din_A[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(16),
      O => histo_Din_A(16)
    );
\histo_Din_A[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(17),
      O => histo_Din_A(17)
    );
\histo_Din_A[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(18),
      O => histo_Din_A(18)
    );
\histo_Din_A[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(19),
      O => histo_Din_A(19)
    );
\histo_Din_A[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(1),
      O => histo_Din_A(1)
    );
\histo_Din_A[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(20),
      O => histo_Din_A(20)
    );
\histo_Din_A[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(21),
      O => histo_Din_A(21)
    );
\histo_Din_A[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(22),
      O => histo_Din_A(22)
    );
\histo_Din_A[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(23),
      O => histo_Din_A(23)
    );
\histo_Din_A[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(24),
      O => histo_Din_A(24)
    );
\histo_Din_A[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(25),
      O => histo_Din_A(25)
    );
\histo_Din_A[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(26),
      O => histo_Din_A(26)
    );
\histo_Din_A[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(27),
      O => histo_Din_A(27)
    );
\histo_Din_A[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(28),
      O => histo_Din_A(28)
    );
\histo_Din_A[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(29),
      O => histo_Din_A(29)
    );
\histo_Din_A[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(2),
      O => histo_Din_A(2)
    );
\histo_Din_A[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(30),
      O => histo_Din_A(30)
    );
\histo_Din_A[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(31),
      O => histo_Din_A(31)
    );
\histo_Din_A[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(3),
      O => histo_Din_A(3)
    );
\histo_Din_A[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(4),
      O => histo_Din_A(4)
    );
\histo_Din_A[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(5),
      O => histo_Din_A(5)
    );
\histo_Din_A[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(6),
      O => histo_Din_A(6)
    );
\histo_Din_A[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(7),
      O => histo_Din_A(7)
    );
\histo_Din_A[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(8),
      O => histo_Din_A(8)
    );
\histo_Din_A[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => add_ln26_reg_217(9),
      O => histo_Din_A(9)
    );
histo_EN_A_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter10,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(2),
      I3 => Q(0),
      I4 => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      O => histo_EN_A
    );
histo_EN_A_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4700000000"
    )
        port map (
      I0 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => inStream_TVALID_int_regslice,
      I4 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I5 => ap_CS_fsm_pp0_stage1,
      O => ap_enable_reg_pp0_iter10
    );
histo_EN_B_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => Q(2),
      I1 => inStream_TVALID_int_regslice,
      I2 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I3 => ap_CS_fsm_pp0_stage1,
      I4 => ap_enable_reg_pp0_iter0,
      O => histo_EN_B
    );
\histo_WEN_A[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888F000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter10,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => E(0),
      I3 => Q(0),
      I4 => Q(2),
      O => histo_WEN_A(0)
    );
\histo_addr_reg_206[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444404000444"
    )
        port map (
      I0 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp0_stage1,
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => ap_enable_reg_pp0_iter0_reg,
      I5 => inStream_TVALID_int_regslice,
      O => addr_cmp_reg_2120
    );
\histo_addr_reg_206_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(0),
      Q => \histo_addr_reg_206_reg[7]_0\(0),
      R => '0'
    );
\histo_addr_reg_206_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(1),
      Q => \histo_addr_reg_206_reg[7]_0\(1),
      R => '0'
    );
\histo_addr_reg_206_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(2),
      Q => \histo_addr_reg_206_reg[7]_0\(2),
      R => '0'
    );
\histo_addr_reg_206_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(3),
      Q => \histo_addr_reg_206_reg[7]_0\(3),
      R => '0'
    );
\histo_addr_reg_206_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(4),
      Q => \histo_addr_reg_206_reg[7]_0\(4),
      R => '0'
    );
\histo_addr_reg_206_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(5),
      Q => \histo_addr_reg_206_reg[7]_0\(5),
      R => '0'
    );
\histo_addr_reg_206_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(6),
      Q => \histo_addr_reg_206_reg[7]_0\(6),
      R => '0'
    );
\histo_addr_reg_206_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => addr_cmp_reg_2120,
      D => histo_Addr_B(7),
      Q => \histo_addr_reg_206_reg[7]_0\(7),
      R => '0'
    );
\icmp_ln19_reg_202_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage0,
      D => icmp_ln19_fu_121_p2,
      Q => \icmp_ln19_reg_202_reg_n_0_[0]\,
      R => '0'
    );
idxPixel_2_fu_127_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => idxPixel_2_fu_127_p2_carry_n_0,
      CO(2) => idxPixel_2_fu_127_p2_carry_n_1,
      CO(1) => idxPixel_2_fu_127_p2_carry_n_2,
      CO(0) => idxPixel_2_fu_127_p2_carry_n_3,
      CYINIT => ap_sig_allocacmp_idxPixel_1(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_2_fu_127_p2(4 downto 1),
      S(3 downto 0) => ap_sig_allocacmp_idxPixel_1(4 downto 1)
    );
\idxPixel_2_fu_127_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => idxPixel_2_fu_127_p2_carry_n_0,
      CO(3) => \idxPixel_2_fu_127_p2_carry__0_n_0\,
      CO(2) => \idxPixel_2_fu_127_p2_carry__0_n_1\,
      CO(1) => \idxPixel_2_fu_127_p2_carry__0_n_2\,
      CO(0) => \idxPixel_2_fu_127_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_2_fu_127_p2(8 downto 5),
      S(3 downto 0) => ap_sig_allocacmp_idxPixel_1(8 downto 5)
    );
\idxPixel_2_fu_127_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idxPixel_2_fu_127_p2_carry__0_n_0\,
      CO(3) => \idxPixel_2_fu_127_p2_carry__1_n_0\,
      CO(2) => \idxPixel_2_fu_127_p2_carry__1_n_1\,
      CO(1) => \idxPixel_2_fu_127_p2_carry__1_n_2\,
      CO(0) => \idxPixel_2_fu_127_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_2_fu_127_p2(12 downto 9),
      S(3 downto 0) => ap_sig_allocacmp_idxPixel_1(12 downto 9)
    );
\idxPixel_2_fu_127_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \idxPixel_2_fu_127_p2_carry__1_n_0\,
      CO(3) => \NLW_idxPixel_2_fu_127_p2_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \idxPixel_2_fu_127_p2_carry__2_n_1\,
      CO(1) => \idxPixel_2_fu_127_p2_carry__2_n_2\,
      CO(0) => \idxPixel_2_fu_127_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_2_fu_127_p2(16 downto 13),
      S(3 downto 0) => ap_sig_allocacmp_idxPixel_1(16 downto 13)
    );
\idxPixel_fu_64[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \idxPixel_fu_64[16]_i_4_n_0\,
      I1 => \idxPixel_fu_64_reg_n_0_[5]\,
      I2 => \idxPixel_fu_64_reg_n_0_[6]\,
      I3 => \idxPixel_fu_64_reg_n_0_[3]\,
      I4 => \idxPixel_fu_64_reg_n_0_[4]\,
      O => \idxPixel_fu_64[16]_i_2_n_0\
    );
\idxPixel_fu_64[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \idxPixel_fu_64_reg_n_0_[9]\,
      I1 => \idxPixel_fu_64_reg_n_0_[10]\,
      I2 => \idxPixel_fu_64_reg_n_0_[7]\,
      I3 => \idxPixel_fu_64_reg_n_0_[8]\,
      I4 => \idxPixel_fu_64[16]_i_5_n_0\,
      O => \idxPixel_fu_64[16]_i_3_n_0\
    );
\idxPixel_fu_64[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \idxPixel_fu_64_reg_n_0_[0]\,
      I1 => \idxPixel_fu_64_reg_n_0_[15]\,
      I2 => \idxPixel_fu_64_reg_n_0_[16]\,
      I3 => \idxPixel_fu_64_reg_n_0_[2]\,
      I4 => \idxPixel_fu_64_reg_n_0_[1]\,
      O => \idxPixel_fu_64[16]_i_4_n_0\
    );
\idxPixel_fu_64[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \idxPixel_fu_64_reg_n_0_[11]\,
      I1 => \idxPixel_fu_64_reg_n_0_[12]\,
      I2 => \idxPixel_fu_64_reg_n_0_[13]\,
      I3 => \idxPixel_fu_64_reg_n_0_[14]\,
      O => \idxPixel_fu_64[16]_i_5_n_0\
    );
\idxPixel_fu_64_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(0),
      Q => \idxPixel_fu_64_reg_n_0_[0]\,
      R => '0'
    );
\idxPixel_fu_64_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(10),
      Q => \idxPixel_fu_64_reg_n_0_[10]\,
      R => '0'
    );
\idxPixel_fu_64_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(11),
      Q => \idxPixel_fu_64_reg_n_0_[11]\,
      R => '0'
    );
\idxPixel_fu_64_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(12),
      Q => \idxPixel_fu_64_reg_n_0_[12]\,
      R => '0'
    );
\idxPixel_fu_64_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(13),
      Q => \idxPixel_fu_64_reg_n_0_[13]\,
      R => '0'
    );
\idxPixel_fu_64_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(14),
      Q => \idxPixel_fu_64_reg_n_0_[14]\,
      R => '0'
    );
\idxPixel_fu_64_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(15),
      Q => \idxPixel_fu_64_reg_n_0_[15]\,
      R => '0'
    );
\idxPixel_fu_64_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(16),
      Q => \idxPixel_fu_64_reg_n_0_[16]\,
      R => '0'
    );
\idxPixel_fu_64_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(1),
      Q => \idxPixel_fu_64_reg_n_0_[1]\,
      R => '0'
    );
\idxPixel_fu_64_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(2),
      Q => \idxPixel_fu_64_reg_n_0_[2]\,
      R => '0'
    );
\idxPixel_fu_64_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(3),
      Q => \idxPixel_fu_64_reg_n_0_[3]\,
      R => '0'
    );
\idxPixel_fu_64_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(4),
      Q => \idxPixel_fu_64_reg_n_0_[4]\,
      R => '0'
    );
\idxPixel_fu_64_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(5),
      Q => \idxPixel_fu_64_reg_n_0_[5]\,
      R => '0'
    );
\idxPixel_fu_64_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(6),
      Q => \idxPixel_fu_64_reg_n_0_[6]\,
      R => '0'
    );
\idxPixel_fu_64_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(7),
      Q => \idxPixel_fu_64_reg_n_0_[7]\,
      R => '0'
    );
\idxPixel_fu_64_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(8),
      Q => \idxPixel_fu_64_reg_n_0_[8]\,
      R => '0'
    );
\idxPixel_fu_64_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => idxPixel_fu_64,
      D => idxPixel_2_fu_127_p2(9),
      Q => \idxPixel_fu_64_reg_n_0_[9]\,
      R => '0'
    );
\reuse_addr_reg_fu_56[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      I3 => flow_control_loop_pipe_sequential_init_U_n_3,
      I4 => \^reuse_addr_reg_fu_56_reg[8]_0\,
      O => \reuse_addr_reg_fu_56[8]_i_1_n_0\
    );
\reuse_addr_reg_fu_56_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(0),
      Q => \reuse_addr_reg_fu_56_reg_n_0_[0]\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(1),
      Q => \reuse_addr_reg_fu_56_reg_n_0_[1]\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(2),
      Q => \reuse_addr_reg_fu_56_reg[2]_0\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(3),
      Q => \reuse_addr_reg_fu_56_reg_n_0_[3]\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(4),
      Q => \reuse_addr_reg_fu_56_reg_n_0_[4]\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(5),
      Q => \reuse_addr_reg_fu_56_reg[5]_0\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(6),
      Q => \reuse_addr_reg_fu_56_reg[6]_0\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_3,
      D => histo_Addr_B(7),
      Q => \reuse_addr_reg_fu_56_reg[7]_0\,
      S => flow_control_loop_pipe_sequential_init_U_n_26
    );
\reuse_addr_reg_fu_56_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \reuse_addr_reg_fu_56[8]_i_1_n_0\,
      Q => \^reuse_addr_reg_fu_56_reg[8]_0\,
      R => '0'
    );
\reuse_reg_fu_60[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AA0000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => \icmp_ln19_reg_202_reg_n_0_[0]\,
      I2 => inStream_TVALID_int_regslice,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_enable_reg_pp0_iter1,
      O => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0)
    );
\reuse_reg_fu_60_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(0),
      Q => reuse_reg_fu_60(0),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(10),
      Q => reuse_reg_fu_60(10),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(11),
      Q => reuse_reg_fu_60(11),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(12),
      Q => reuse_reg_fu_60(12),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(13),
      Q => reuse_reg_fu_60(13),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(14),
      Q => reuse_reg_fu_60(14),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(15),
      Q => reuse_reg_fu_60(15),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(16),
      Q => reuse_reg_fu_60(16),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(17),
      Q => reuse_reg_fu_60(17),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(18),
      Q => reuse_reg_fu_60(18),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(19),
      Q => reuse_reg_fu_60(19),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(1),
      Q => reuse_reg_fu_60(1),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(20),
      Q => reuse_reg_fu_60(20),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(21),
      Q => reuse_reg_fu_60(21),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(22),
      Q => reuse_reg_fu_60(22),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(23),
      Q => reuse_reg_fu_60(23),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(24),
      Q => reuse_reg_fu_60(24),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(25),
      Q => reuse_reg_fu_60(25),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(26),
      Q => reuse_reg_fu_60(26),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(27),
      Q => reuse_reg_fu_60(27),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(28),
      Q => reuse_reg_fu_60(28),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(29),
      Q => reuse_reg_fu_60(29),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(2),
      Q => reuse_reg_fu_60(2),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(30),
      Q => reuse_reg_fu_60(30),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(31),
      Q => reuse_reg_fu_60(31),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(3),
      Q => reuse_reg_fu_60(3),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(4),
      Q => reuse_reg_fu_60(4),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(5),
      Q => reuse_reg_fu_60(5),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(6),
      Q => reuse_reg_fu_60(6),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(7),
      Q => reuse_reg_fu_60(7),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(8),
      Q => reuse_reg_fu_60(8),
      R => ap_sig_allocacmp_idxPixel_11
    );
\reuse_reg_fu_60_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A(0),
      D => add_ln26_reg_217(9),
      Q => reuse_reg_fu_60(9),
      R => ap_sig_allocacmp_idxPixel_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0_doHist is
  port (
    ap_local_block : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    histo_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_EN_A : out STD_LOGIC;
    histo_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    histo_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Clk_A : out STD_LOGIC;
    histo_Rst_A : out STD_LOGIC;
    histo_Addr_B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_EN_B : out STD_LOGIC;
    histo_WEN_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    histo_Din_B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Dout_B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Clk_B : out STD_LOGIC;
    histo_Rst_B : out STD_LOGIC;
    s_axi_ctrl_bus_AWVALID : in STD_LOGIC;
    s_axi_ctrl_bus_AWREADY : out STD_LOGIC;
    s_axi_ctrl_bus_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_WVALID : in STD_LOGIC;
    s_axi_ctrl_bus_WREADY : out STD_LOGIC;
    s_axi_ctrl_bus_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_ARVALID : in STD_LOGIC;
    s_axi_ctrl_bus_ARREADY : out STD_LOGIC;
    s_axi_ctrl_bus_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_bus_RVALID : out STD_LOGIC;
    s_axi_ctrl_bus_RREADY : in STD_LOGIC;
    s_axi_ctrl_bus_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bus_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bus_BVALID : out STD_LOGIC;
    s_axi_ctrl_bus_BREADY : in STD_LOGIC;
    s_axi_ctrl_bus_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of design_1_doHist_0_0_doHist : entity is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of design_1_doHist_0_0_doHist : entity is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of design_1_doHist_0_0_doHist : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_doHist_0_0_doHist : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_1_doHist_0_0_doHist : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_doHist_0_0_doHist : entity is "doHist";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of design_1_doHist_0_0_doHist : entity is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_doHist_0_0_doHist : entity is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of design_1_doHist_0_0_doHist : entity is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of design_1_doHist_0_0_doHist : entity is "4'b1000";
  attribute hls_module : string;
  attribute hls_module of design_1_doHist_0_0_doHist : entity is "yes";
end design_1_doHist_0_0_doHist;

architecture STRUCTURE of design_1_doHist_0_0_doHist is
  signal \<const0>\ : STD_LOGIC;
  signal B_V_data_1_sel : STD_LOGIC;
  signal B_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ap_clk\ : STD_LOGIC;
  signal ap_done : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ctrl_bus_s_axi_U_n_9 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_10 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_11 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_12 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_13 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_4 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_54 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_55 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_56 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_57 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_7 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_8 : STD_LOGIC;
  signal grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_9 : STD_LOGIC;
  signal \^histo_addr_a\ : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal \^histo_addr_b\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \^histo_rst_b\ : STD_LOGIC;
  signal \^histo_wen_a\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal histo_addr_reg_206 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal idxHist_fu_32 : STD_LOGIC;
  signal \^instream_tready\ : STD_LOGIC;
  signal inStream_TVALID_int_regslice : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_15 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_16 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_17 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_18 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_19 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_20 : STD_LOGIC;
  signal regslice_both_inStream_V_data_V_U_n_21 : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
begin
  \^ap_clk\ <= ap_clk;
  ap_local_block <= \<const0>\;
  histo_Addr_A(31) <= \<const0>\;
  histo_Addr_A(30) <= \<const0>\;
  histo_Addr_A(29) <= \<const0>\;
  histo_Addr_A(28) <= \<const0>\;
  histo_Addr_A(27) <= \<const0>\;
  histo_Addr_A(26) <= \<const0>\;
  histo_Addr_A(25) <= \<const0>\;
  histo_Addr_A(24) <= \<const0>\;
  histo_Addr_A(23) <= \<const0>\;
  histo_Addr_A(22) <= \<const0>\;
  histo_Addr_A(21) <= \<const0>\;
  histo_Addr_A(20) <= \<const0>\;
  histo_Addr_A(19) <= \<const0>\;
  histo_Addr_A(18) <= \<const0>\;
  histo_Addr_A(17) <= \<const0>\;
  histo_Addr_A(16) <= \<const0>\;
  histo_Addr_A(15) <= \<const0>\;
  histo_Addr_A(14) <= \<const0>\;
  histo_Addr_A(13) <= \<const0>\;
  histo_Addr_A(12) <= \<const0>\;
  histo_Addr_A(11) <= \<const0>\;
  histo_Addr_A(10 downto 2) <= \^histo_addr_a\(10 downto 2);
  histo_Addr_A(1) <= \<const0>\;
  histo_Addr_A(0) <= \<const0>\;
  histo_Addr_B(31) <= \<const0>\;
  histo_Addr_B(30) <= \<const0>\;
  histo_Addr_B(29) <= \<const0>\;
  histo_Addr_B(28) <= \<const0>\;
  histo_Addr_B(27) <= \<const0>\;
  histo_Addr_B(26) <= \<const0>\;
  histo_Addr_B(25) <= \<const0>\;
  histo_Addr_B(24) <= \<const0>\;
  histo_Addr_B(23) <= \<const0>\;
  histo_Addr_B(22) <= \<const0>\;
  histo_Addr_B(21) <= \<const0>\;
  histo_Addr_B(20) <= \<const0>\;
  histo_Addr_B(19) <= \<const0>\;
  histo_Addr_B(18) <= \<const0>\;
  histo_Addr_B(17) <= \<const0>\;
  histo_Addr_B(16) <= \<const0>\;
  histo_Addr_B(15) <= \<const0>\;
  histo_Addr_B(14) <= \<const0>\;
  histo_Addr_B(13) <= \<const0>\;
  histo_Addr_B(12) <= \<const0>\;
  histo_Addr_B(11) <= \<const0>\;
  histo_Addr_B(10) <= \<const0>\;
  histo_Addr_B(9 downto 2) <= \^histo_addr_b\(9 downto 2);
  histo_Addr_B(1) <= \<const0>\;
  histo_Addr_B(0) <= \<const0>\;
  histo_Clk_A <= \^ap_clk\;
  histo_Clk_B <= \^ap_clk\;
  histo_Din_B(31) <= \<const0>\;
  histo_Din_B(30) <= \<const0>\;
  histo_Din_B(29) <= \<const0>\;
  histo_Din_B(28) <= \<const0>\;
  histo_Din_B(27) <= \<const0>\;
  histo_Din_B(26) <= \<const0>\;
  histo_Din_B(25) <= \<const0>\;
  histo_Din_B(24) <= \<const0>\;
  histo_Din_B(23) <= \<const0>\;
  histo_Din_B(22) <= \<const0>\;
  histo_Din_B(21) <= \<const0>\;
  histo_Din_B(20) <= \<const0>\;
  histo_Din_B(19) <= \<const0>\;
  histo_Din_B(18) <= \<const0>\;
  histo_Din_B(17) <= \<const0>\;
  histo_Din_B(16) <= \<const0>\;
  histo_Din_B(15) <= \<const0>\;
  histo_Din_B(14) <= \<const0>\;
  histo_Din_B(13) <= \<const0>\;
  histo_Din_B(12) <= \<const0>\;
  histo_Din_B(11) <= \<const0>\;
  histo_Din_B(10) <= \<const0>\;
  histo_Din_B(9) <= \<const0>\;
  histo_Din_B(8) <= \<const0>\;
  histo_Din_B(7) <= \<const0>\;
  histo_Din_B(6) <= \<const0>\;
  histo_Din_B(5) <= \<const0>\;
  histo_Din_B(4) <= \<const0>\;
  histo_Din_B(3) <= \<const0>\;
  histo_Din_B(2) <= \<const0>\;
  histo_Din_B(1) <= \<const0>\;
  histo_Din_B(0) <= \<const0>\;
  histo_Rst_A <= \^histo_rst_b\;
  histo_Rst_B <= \^histo_rst_b\;
  histo_WEN_A(3) <= \^histo_wen_a\(3);
  histo_WEN_A(2) <= \^histo_wen_a\(3);
  histo_WEN_A(1) <= \^histo_wen_a\(3);
  histo_WEN_A(0) <= \^histo_wen_a\(3);
  histo_WEN_B(3) <= \<const0>\;
  histo_WEN_B(2) <= \<const0>\;
  histo_WEN_B(1) <= \<const0>\;
  histo_WEN_B(0) <= \<const0>\;
  inStream_TREADY <= \^instream_tready\;
  s_axi_ctrl_bus_BRESP(1) <= \<const0>\;
  s_axi_ctrl_bus_BRESP(0) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(31) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(30) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(29) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(28) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(27) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(26) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(25) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(24) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(23) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(22) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(21) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(20) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(19) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(18) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(17) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(16) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(15) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(14) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(13) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(12) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(11) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(10) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(9) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(8) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(7) <= \^s_axi_ctrl_bus_rdata\(7);
  s_axi_ctrl_bus_RDATA(6) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(5 downto 0) <= \^s_axi_ctrl_bus_rdata\(5 downto 0);
  s_axi_ctrl_bus_RRESP(1) <= \<const0>\;
  s_axi_ctrl_bus_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => \^histo_rst_b\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => \^histo_rst_b\
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => \^histo_rst_b\
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => \^histo_rst_b\
    );
ctrl_bus_s_axi_U: entity work.design_1_doHist_0_0_doHist_ctrl_bus_s_axi
     port map (
      D(0) => ap_NS_fsm(0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_ctrl_bus_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_ctrl_bus_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_ctrl_bus_WREADY,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      ap_clk => \^ap_clk\,
      ap_done => ap_done,
      ap_done_reg1 => ap_done_reg1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => \^histo_rst_b\,
      ap_start => ap_start,
      grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      int_ap_start_reg_0 => ctrl_bus_s_axi_U_n_9,
      interrupt => interrupt,
      s_axi_ctrl_bus_ARADDR(3 downto 0) => s_axi_ctrl_bus_ARADDR(3 downto 0),
      s_axi_ctrl_bus_ARVALID => s_axi_ctrl_bus_ARVALID,
      s_axi_ctrl_bus_AWADDR(3 downto 0) => s_axi_ctrl_bus_AWADDR(3 downto 0),
      s_axi_ctrl_bus_AWVALID => s_axi_ctrl_bus_AWVALID,
      s_axi_ctrl_bus_BREADY => s_axi_ctrl_bus_BREADY,
      s_axi_ctrl_bus_BVALID => s_axi_ctrl_bus_BVALID,
      s_axi_ctrl_bus_RDATA(6) => \^s_axi_ctrl_bus_rdata\(7),
      s_axi_ctrl_bus_RDATA(5 downto 0) => \^s_axi_ctrl_bus_rdata\(5 downto 0),
      s_axi_ctrl_bus_RREADY => s_axi_ctrl_bus_RREADY,
      s_axi_ctrl_bus_RVALID => s_axi_ctrl_bus_RVALID,
      s_axi_ctrl_bus_WDATA(6) => s_axi_ctrl_bus_WDATA(7),
      s_axi_ctrl_bus_WDATA(5 downto 0) => s_axi_ctrl_bus_WDATA(5 downto 0),
      s_axi_ctrl_bus_WSTRB(0) => s_axi_ctrl_bus_WSTRB(0),
      s_axi_ctrl_bus_WVALID => s_axi_ctrl_bus_WVALID
    );
grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48: entity work.design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_12_1
     port map (
      D(1 downto 0) => ap_NS_fsm(2 downto 1),
      E(0) => idxHist_fu_32,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      ap_clk => \^ap_clk\,
      ap_done_cache_reg => \^histo_rst_b\,
      ap_done_reg1 => ap_done_reg1,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      histo_Addr_A(8 downto 0) => \^histo_addr_a\(10 downto 2),
      \histo_Addr_A[9]\(7 downto 0) => histo_addr_reg_206(7 downto 0)
    );
grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ctrl_bus_s_axi_U_n_9,
      Q => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      R => \^histo_rst_b\
    );
grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54: entity work.design_1_doHist_0_0_doHist_doHist_Pipeline_VITIS_LOOP_19_2
     port map (
      B_V_data_1_sel => B_V_data_1_sel,
      B_V_data_1_state(0) => B_V_data_1_state(1),
      \B_V_data_1_state_reg[1]\ => \^instream_tready\,
      D(0) => ap_NS_fsm(3),
      E(0) => idxHist_fu_32,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => ap_CS_fsm_state2,
      S(2) => regslice_both_inStream_V_data_V_U_n_19,
      S(1) => regslice_both_inStream_V_data_V_U_n_20,
      S(0) => regslice_both_inStream_V_data_V_U_n_21,
      addr_cmp_fu_150_p2_carry_i_3(3) => regslice_both_inStream_V_data_V_U_n_15,
      addr_cmp_fu_150_p2_carry_i_3(2) => regslice_both_inStream_V_data_V_U_n_16,
      addr_cmp_fu_150_p2_carry_i_3(1) => regslice_both_inStream_V_data_V_U_n_17,
      addr_cmp_fu_150_p2_carry_i_3(0) => regslice_both_inStream_V_data_V_U_n_18,
      addr_cmp_fu_150_p2_carry_i_3_0(3) => regslice_both_inStream_V_data_V_U_n_11,
      addr_cmp_fu_150_p2_carry_i_3_0(2) => regslice_both_inStream_V_data_V_U_n_12,
      addr_cmp_fu_150_p2_carry_i_3_0(1) => regslice_both_inStream_V_data_V_U_n_13,
      addr_cmp_fu_150_p2_carry_i_3_0(0) => regslice_both_inStream_V_data_V_U_n_14,
      \ap_CS_fsm_reg[2]\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_12,
      ap_clk => \^ap_clk\,
      ap_done => ap_done,
      ap_done_cache_reg => \^histo_rst_b\,
      ap_rst_n => ap_rst_n,
      grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg => grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg,
      grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      histo_Addr_B(7 downto 0) => \^histo_addr_b\(9 downto 2),
      histo_Din_A(31 downto 0) => histo_Din_A(31 downto 0),
      histo_Dout_B(31 downto 0) => histo_Dout_B(31 downto 0),
      histo_EN_A => histo_EN_A,
      histo_EN_B => histo_EN_B,
      histo_WEN_A(0) => \^histo_wen_a\(3),
      \histo_addr_reg_206_reg[7]_0\(7 downto 0) => histo_addr_reg_206(7 downto 0),
      \icmp_ln19_reg_202_reg[0]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_4,
      \icmp_ln19_reg_202_reg[0]_1\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_13,
      inStream_TVALID => inStream_TVALID,
      inStream_TVALID_int_regslice => inStream_TVALID_int_regslice,
      \reuse_addr_reg_fu_56_reg[0]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_7,
      \reuse_addr_reg_fu_56_reg[0]_1\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_8,
      \reuse_addr_reg_fu_56_reg[2]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_57,
      \reuse_addr_reg_fu_56_reg[3]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_9,
      \reuse_addr_reg_fu_56_reg[3]_1\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_10,
      \reuse_addr_reg_fu_56_reg[5]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_56,
      \reuse_addr_reg_fu_56_reg[6]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_55,
      \reuse_addr_reg_fu_56_reg[7]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_54,
      \reuse_addr_reg_fu_56_reg[8]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_11
    );
grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_12,
      Q => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg,
      R => \^histo_rst_b\
    );
regslice_both_inStream_V_data_V_U: entity work.design_1_doHist_0_0_doHist_regslice_both
     port map (
      \B_V_data_1_payload_A_reg[4]_0\(3) => regslice_both_inStream_V_data_V_U_n_15,
      \B_V_data_1_payload_A_reg[4]_0\(2) => regslice_both_inStream_V_data_V_U_n_16,
      \B_V_data_1_payload_A_reg[4]_0\(1) => regslice_both_inStream_V_data_V_U_n_17,
      \B_V_data_1_payload_A_reg[4]_0\(0) => regslice_both_inStream_V_data_V_U_n_18,
      B_V_data_1_sel => B_V_data_1_sel,
      B_V_data_1_sel_rd_reg_0 => \^histo_rst_b\,
      B_V_data_1_sel_rd_reg_1 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_13,
      B_V_data_1_state(0) => B_V_data_1_state(1),
      \B_V_data_1_state_reg[0]_0\ => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_4,
      \B_V_data_1_state_reg[1]_0\ => \^instream_tready\,
      Q(3) => regslice_both_inStream_V_data_V_U_n_11,
      Q(2) => regslice_both_inStream_V_data_V_U_n_12,
      Q(1) => regslice_both_inStream_V_data_V_U_n_13,
      Q(0) => regslice_both_inStream_V_data_V_U_n_14,
      S(2) => regslice_both_inStream_V_data_V_U_n_19,
      S(1) => regslice_both_inStream_V_data_V_U_n_20,
      S(0) => regslice_both_inStream_V_data_V_U_n_21,
      addr_cmp_fu_150_p2_carry => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_8,
      addr_cmp_fu_150_p2_carry_0 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_57,
      addr_cmp_fu_150_p2_carry_1 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_7,
      addr_cmp_fu_150_p2_carry_2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_10,
      addr_cmp_fu_150_p2_carry_3 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_56,
      addr_cmp_fu_150_p2_carry_4 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_9,
      addr_cmp_fu_150_p2_carry_i_2_0 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_54,
      addr_cmp_fu_150_p2_carry_i_2_1 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_11,
      addr_cmp_fu_150_p2_carry_i_2_2 => grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_n_55,
      ap_clk => \^ap_clk\,
      ap_rst_n => ap_rst_n,
      histo_Addr_B(7 downto 0) => \^histo_addr_b\(9 downto 2),
      inStream_TDATA(7 downto 0) => inStream_TDATA(7 downto 0),
      inStream_TVALID => inStream_TVALID,
      inStream_TVALID_int_regslice => inStream_TVALID_int_regslice
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_doHist_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_doHist_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_doHist_0_0 : entity is "design_1_doHist_0_0,doHist,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_doHist_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_doHist_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_doHist_0_0 : entity is "doHist,Vivado 2021.2";
  attribute hls_module : string;
  attribute hls_module of design_1_doHist_0_0 : entity is "yes";
end design_1_doHist_0_0;

architecture STRUCTURE of design_1_doHist_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^histo_addr_a\ : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal \^histo_addr_b\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \^s_axi_ctrl_bus_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ap_local_block_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_histo_Addr_A_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_histo_Addr_B_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_histo_Din_B_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_histo_WEN_B_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_ctrl_bus_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_bus_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal NLW_inst_s_axi_ctrl_bus_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "4'b1000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl_bus:inStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of histo_Clk_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA CLK";
  attribute X_INTERFACE_INFO of histo_Clk_B : signal is "xilinx.com:interface:bram:1.0 histo_PORTB CLK";
  attribute X_INTERFACE_INFO of histo_EN_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA EN";
  attribute X_INTERFACE_INFO of histo_EN_B : signal is "xilinx.com:interface:bram:1.0 histo_PORTB EN";
  attribute X_INTERFACE_INFO of histo_Rst_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA RST";
  attribute X_INTERFACE_INFO of histo_Rst_B : signal is "xilinx.com:interface:bram:1.0 histo_PORTB RST";
  attribute X_INTERFACE_INFO of inStream_TREADY : signal is "xilinx.com:interface:axis:1.0 inStream TREADY";
  attribute X_INTERFACE_INFO of inStream_TVALID : signal is "xilinx.com:interface:axis:1.0 inStream TVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_bus_RREADY : signal is "XIL_INTERFACENAME s_axi_ctrl_bus, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WVALID";
  attribute X_INTERFACE_INFO of histo_Addr_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA ADDR";
  attribute X_INTERFACE_INFO of histo_Addr_B : signal is "xilinx.com:interface:bram:1.0 histo_PORTB ADDR";
  attribute X_INTERFACE_INFO of histo_Din_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA DIN";
  attribute X_INTERFACE_INFO of histo_Din_B : signal is "xilinx.com:interface:bram:1.0 histo_PORTB DIN";
  attribute X_INTERFACE_INFO of histo_Dout_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA DOUT";
  attribute X_INTERFACE_PARAMETER of histo_Dout_A : signal is "XIL_INTERFACENAME histo_PORTA, MEM_WIDTH 32, MEM_SIZE 4, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of histo_Dout_B : signal is "xilinx.com:interface:bram:1.0 histo_PORTB DOUT";
  attribute X_INTERFACE_PARAMETER of histo_Dout_B : signal is "XIL_INTERFACENAME histo_PORTB, MEM_WIDTH 32, MEM_SIZE 4, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of histo_WEN_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA WE";
  attribute X_INTERFACE_INFO of histo_WEN_B : signal is "xilinx.com:interface:bram:1.0 histo_PORTB WE";
  attribute X_INTERFACE_INFO of inStream_TDATA : signal is "xilinx.com:interface:axis:1.0 inStream TDATA";
  attribute X_INTERFACE_INFO of inStream_TDEST : signal is "xilinx.com:interface:axis:1.0 inStream TDEST";
  attribute X_INTERFACE_INFO of inStream_TID : signal is "xilinx.com:interface:axis:1.0 inStream TID";
  attribute X_INTERFACE_PARAMETER of inStream_TID : signal is "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of inStream_TKEEP : signal is "xilinx.com:interface:axis:1.0 inStream TKEEP";
  attribute X_INTERFACE_INFO of inStream_TLAST : signal is "xilinx.com:interface:axis:1.0 inStream TLAST";
  attribute X_INTERFACE_INFO of inStream_TSTRB : signal is "xilinx.com:interface:axis:1.0 inStream TSTRB";
  attribute X_INTERFACE_INFO of inStream_TUSER : signal is "xilinx.com:interface:axis:1.0 inStream TUSER";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bus_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_bus WSTRB";
begin
  ap_local_block <= \<const0>\;
  histo_Addr_A(31) <= \<const0>\;
  histo_Addr_A(30) <= \<const0>\;
  histo_Addr_A(29) <= \<const0>\;
  histo_Addr_A(28) <= \<const0>\;
  histo_Addr_A(27) <= \<const0>\;
  histo_Addr_A(26) <= \<const0>\;
  histo_Addr_A(25) <= \<const0>\;
  histo_Addr_A(24) <= \<const0>\;
  histo_Addr_A(23) <= \<const0>\;
  histo_Addr_A(22) <= \<const0>\;
  histo_Addr_A(21) <= \<const0>\;
  histo_Addr_A(20) <= \<const0>\;
  histo_Addr_A(19) <= \<const0>\;
  histo_Addr_A(18) <= \<const0>\;
  histo_Addr_A(17) <= \<const0>\;
  histo_Addr_A(16) <= \<const0>\;
  histo_Addr_A(15) <= \<const0>\;
  histo_Addr_A(14) <= \<const0>\;
  histo_Addr_A(13) <= \<const0>\;
  histo_Addr_A(12) <= \<const0>\;
  histo_Addr_A(11) <= \<const0>\;
  histo_Addr_A(10 downto 2) <= \^histo_addr_a\(10 downto 2);
  histo_Addr_A(1) <= \<const0>\;
  histo_Addr_A(0) <= \<const0>\;
  histo_Addr_B(31) <= \<const0>\;
  histo_Addr_B(30) <= \<const0>\;
  histo_Addr_B(29) <= \<const0>\;
  histo_Addr_B(28) <= \<const0>\;
  histo_Addr_B(27) <= \<const0>\;
  histo_Addr_B(26) <= \<const0>\;
  histo_Addr_B(25) <= \<const0>\;
  histo_Addr_B(24) <= \<const0>\;
  histo_Addr_B(23) <= \<const0>\;
  histo_Addr_B(22) <= \<const0>\;
  histo_Addr_B(21) <= \<const0>\;
  histo_Addr_B(20) <= \<const0>\;
  histo_Addr_B(19) <= \<const0>\;
  histo_Addr_B(18) <= \<const0>\;
  histo_Addr_B(17) <= \<const0>\;
  histo_Addr_B(16) <= \<const0>\;
  histo_Addr_B(15) <= \<const0>\;
  histo_Addr_B(14) <= \<const0>\;
  histo_Addr_B(13) <= \<const0>\;
  histo_Addr_B(12) <= \<const0>\;
  histo_Addr_B(11) <= \<const0>\;
  histo_Addr_B(10) <= \<const0>\;
  histo_Addr_B(9 downto 2) <= \^histo_addr_b\(9 downto 2);
  histo_Addr_B(1) <= \<const0>\;
  histo_Addr_B(0) <= \<const0>\;
  histo_Din_B(31) <= \<const0>\;
  histo_Din_B(30) <= \<const0>\;
  histo_Din_B(29) <= \<const0>\;
  histo_Din_B(28) <= \<const0>\;
  histo_Din_B(27) <= \<const0>\;
  histo_Din_B(26) <= \<const0>\;
  histo_Din_B(25) <= \<const0>\;
  histo_Din_B(24) <= \<const0>\;
  histo_Din_B(23) <= \<const0>\;
  histo_Din_B(22) <= \<const0>\;
  histo_Din_B(21) <= \<const0>\;
  histo_Din_B(20) <= \<const0>\;
  histo_Din_B(19) <= \<const0>\;
  histo_Din_B(18) <= \<const0>\;
  histo_Din_B(17) <= \<const0>\;
  histo_Din_B(16) <= \<const0>\;
  histo_Din_B(15) <= \<const0>\;
  histo_Din_B(14) <= \<const0>\;
  histo_Din_B(13) <= \<const0>\;
  histo_Din_B(12) <= \<const0>\;
  histo_Din_B(11) <= \<const0>\;
  histo_Din_B(10) <= \<const0>\;
  histo_Din_B(9) <= \<const0>\;
  histo_Din_B(8) <= \<const0>\;
  histo_Din_B(7) <= \<const0>\;
  histo_Din_B(6) <= \<const0>\;
  histo_Din_B(5) <= \<const0>\;
  histo_Din_B(4) <= \<const0>\;
  histo_Din_B(3) <= \<const0>\;
  histo_Din_B(2) <= \<const0>\;
  histo_Din_B(1) <= \<const0>\;
  histo_Din_B(0) <= \<const0>\;
  histo_WEN_B(3) <= \<const0>\;
  histo_WEN_B(2) <= \<const0>\;
  histo_WEN_B(1) <= \<const0>\;
  histo_WEN_B(0) <= \<const0>\;
  s_axi_ctrl_bus_BRESP(1) <= \<const0>\;
  s_axi_ctrl_bus_BRESP(0) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(31) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(30) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(29) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(28) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(27) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(26) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(25) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(24) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(23) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(22) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(21) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(20) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(19) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(18) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(17) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(16) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(15) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(14) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(13) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(12) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(11) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(10) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(9) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(8) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(7) <= \^s_axi_ctrl_bus_rdata\(7);
  s_axi_ctrl_bus_RDATA(6) <= \<const0>\;
  s_axi_ctrl_bus_RDATA(5 downto 0) <= \^s_axi_ctrl_bus_rdata\(5 downto 0);
  s_axi_ctrl_bus_RRESP(1) <= \<const0>\;
  s_axi_ctrl_bus_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_doHist_0_0_doHist
     port map (
      ap_clk => ap_clk,
      ap_local_block => NLW_inst_ap_local_block_UNCONNECTED,
      ap_rst_n => ap_rst_n,
      histo_Addr_A(31 downto 11) => NLW_inst_histo_Addr_A_UNCONNECTED(31 downto 11),
      histo_Addr_A(10 downto 2) => \^histo_addr_a\(10 downto 2),
      histo_Addr_A(1 downto 0) => NLW_inst_histo_Addr_A_UNCONNECTED(1 downto 0),
      histo_Addr_B(31 downto 10) => NLW_inst_histo_Addr_B_UNCONNECTED(31 downto 10),
      histo_Addr_B(9 downto 2) => \^histo_addr_b\(9 downto 2),
      histo_Addr_B(1 downto 0) => NLW_inst_histo_Addr_B_UNCONNECTED(1 downto 0),
      histo_Clk_A => histo_Clk_A,
      histo_Clk_B => histo_Clk_B,
      histo_Din_A(31 downto 0) => histo_Din_A(31 downto 0),
      histo_Din_B(31 downto 0) => NLW_inst_histo_Din_B_UNCONNECTED(31 downto 0),
      histo_Dout_A(31 downto 0) => B"00000000000000000000000000000000",
      histo_Dout_B(31 downto 0) => histo_Dout_B(31 downto 0),
      histo_EN_A => histo_EN_A,
      histo_EN_B => histo_EN_B,
      histo_Rst_A => histo_Rst_A,
      histo_Rst_B => histo_Rst_B,
      histo_WEN_A(3 downto 0) => histo_WEN_A(3 downto 0),
      histo_WEN_B(3 downto 0) => NLW_inst_histo_WEN_B_UNCONNECTED(3 downto 0),
      inStream_TDATA(7 downto 0) => inStream_TDATA(7 downto 0),
      inStream_TDEST(5 downto 0) => B"000000",
      inStream_TID(4 downto 0) => B"00000",
      inStream_TKEEP(0) => '0',
      inStream_TLAST(0) => '0',
      inStream_TREADY => inStream_TREADY,
      inStream_TSTRB(0) => '0',
      inStream_TUSER(1 downto 0) => B"00",
      inStream_TVALID => inStream_TVALID,
      interrupt => interrupt,
      s_axi_ctrl_bus_ARADDR(3 downto 0) => s_axi_ctrl_bus_ARADDR(3 downto 0),
      s_axi_ctrl_bus_ARREADY => s_axi_ctrl_bus_ARREADY,
      s_axi_ctrl_bus_ARVALID => s_axi_ctrl_bus_ARVALID,
      s_axi_ctrl_bus_AWADDR(3 downto 0) => s_axi_ctrl_bus_AWADDR(3 downto 0),
      s_axi_ctrl_bus_AWREADY => s_axi_ctrl_bus_AWREADY,
      s_axi_ctrl_bus_AWVALID => s_axi_ctrl_bus_AWVALID,
      s_axi_ctrl_bus_BREADY => s_axi_ctrl_bus_BREADY,
      s_axi_ctrl_bus_BRESP(1 downto 0) => NLW_inst_s_axi_ctrl_bus_BRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bus_BVALID => s_axi_ctrl_bus_BVALID,
      s_axi_ctrl_bus_RDATA(31 downto 8) => NLW_inst_s_axi_ctrl_bus_RDATA_UNCONNECTED(31 downto 8),
      s_axi_ctrl_bus_RDATA(7) => \^s_axi_ctrl_bus_rdata\(7),
      s_axi_ctrl_bus_RDATA(6) => NLW_inst_s_axi_ctrl_bus_RDATA_UNCONNECTED(6),
      s_axi_ctrl_bus_RDATA(5 downto 0) => \^s_axi_ctrl_bus_rdata\(5 downto 0),
      s_axi_ctrl_bus_RREADY => s_axi_ctrl_bus_RREADY,
      s_axi_ctrl_bus_RRESP(1 downto 0) => NLW_inst_s_axi_ctrl_bus_RRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bus_RVALID => s_axi_ctrl_bus_RVALID,
      s_axi_ctrl_bus_WDATA(31 downto 8) => B"000000000000000000000000",
      s_axi_ctrl_bus_WDATA(7) => s_axi_ctrl_bus_WDATA(7),
      s_axi_ctrl_bus_WDATA(6) => '0',
      s_axi_ctrl_bus_WDATA(5 downto 0) => s_axi_ctrl_bus_WDATA(5 downto 0),
      s_axi_ctrl_bus_WREADY => s_axi_ctrl_bus_WREADY,
      s_axi_ctrl_bus_WSTRB(3 downto 1) => B"000",
      s_axi_ctrl_bus_WSTRB(0) => s_axi_ctrl_bus_WSTRB(0),
      s_axi_ctrl_bus_WVALID => s_axi_ctrl_bus_WVALID
    );
end STRUCTURE;
