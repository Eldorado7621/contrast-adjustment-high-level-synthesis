// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="doHist_doHist,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.806000,HLS_SYN_LAT=153864,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=220,HLS_SYN_LUT=440,HLS_VERSION=2021_2}" *)

module doHist (
        ap_local_block,
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
        interrupt
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
parameter    C_S_AXI_CTRL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CTRL_BUS_ADDR_WIDTH = 4;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CTRL_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

output   ap_local_block;
input   ap_clk;
input   ap_rst_n;
input  [7:0] inStream_TDATA;
input   inStream_TVALID;
output   inStream_TREADY;
input  [0:0] inStream_TKEEP;
input  [0:0] inStream_TSTRB;
input  [1:0] inStream_TUSER;
input  [0:0] inStream_TLAST;
input  [4:0] inStream_TID;
input  [5:0] inStream_TDEST;
output  [31:0] histo_Addr_A;
output   histo_EN_A;
output  [3:0] histo_WEN_A;
output  [31:0] histo_Din_A;
input  [31:0] histo_Dout_A;
output   histo_Clk_A;
output   histo_Rst_A;
output  [31:0] histo_Addr_B;
output   histo_EN_B;
output  [3:0] histo_WEN_B;
output  [31:0] histo_Din_B;
input  [31:0] histo_Dout_B;
output   histo_Clk_B;
output   histo_Rst_B;
input   s_axi_ctrl_bus_AWVALID;
output   s_axi_ctrl_bus_AWREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_ctrl_bus_AWADDR;
input   s_axi_ctrl_bus_WVALID;
output   s_axi_ctrl_bus_WREADY;
input  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_ctrl_bus_WDATA;
input  [C_S_AXI_CTRL_BUS_WSTRB_WIDTH - 1:0] s_axi_ctrl_bus_WSTRB;
input   s_axi_ctrl_bus_ARVALID;
output   s_axi_ctrl_bus_ARREADY;
input  [C_S_AXI_CTRL_BUS_ADDR_WIDTH - 1:0] s_axi_ctrl_bus_ARADDR;
output   s_axi_ctrl_bus_RVALID;
input   s_axi_ctrl_bus_RREADY;
output  [C_S_AXI_CTRL_BUS_DATA_WIDTH - 1:0] s_axi_ctrl_bus_RDATA;
output  [1:0] s_axi_ctrl_bus_RRESP;
output   s_axi_ctrl_bus_BVALID;
input   s_axi_ctrl_bus_BREADY;
output  [1:0] s_axi_ctrl_bus_BRESP;
output   interrupt;

reg[31:0] histo_Addr_A;
reg histo_EN_A;
reg[3:0] histo_WEN_A;
reg[31:0] histo_Din_A;
reg histo_EN_B;

wire   [0:0] ap_local_deadlock;
 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start;
wire    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_done;
wire    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_idle;
wire    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_ready;
wire   [31:0] grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_Addr_A;
wire    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_EN_A;
wire   [3:0] grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_WEN_A;
wire   [31:0] grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_Din_A;
wire    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start;
wire    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_done;
wire    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_idle;
wire    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_ready;
wire    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_inStream_TREADY;
wire   [31:0] grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Addr_A;
wire    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_EN_A;
wire   [3:0] grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A;
wire   [31:0] grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Din_A;
wire   [31:0] grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Addr_B;
wire    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_EN_B;
wire   [3:0] grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_B;
wire   [31:0] grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Din_B;
reg    grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    regslice_both_inStream_V_data_V_U_apdone_blk;
wire   [7:0] inStream_TDATA_int_regslice;
wire    inStream_TVALID_int_regslice;
reg    inStream_TREADY_int_regslice;
wire    regslice_both_inStream_V_data_V_U_ack_in;
wire    regslice_both_inStream_V_keep_V_U_apdone_blk;
wire   [0:0] inStream_TKEEP_int_regslice;
wire    regslice_both_inStream_V_keep_V_U_vld_out;
wire    regslice_both_inStream_V_keep_V_U_ack_in;
wire    regslice_both_inStream_V_strb_V_U_apdone_blk;
wire   [0:0] inStream_TSTRB_int_regslice;
wire    regslice_both_inStream_V_strb_V_U_vld_out;
wire    regslice_both_inStream_V_strb_V_U_ack_in;
wire    regslice_both_inStream_V_user_V_U_apdone_blk;
wire   [1:0] inStream_TUSER_int_regslice;
wire    regslice_both_inStream_V_user_V_U_vld_out;
wire    regslice_both_inStream_V_user_V_U_ack_in;
wire    regslice_both_inStream_V_last_V_U_apdone_blk;
wire   [0:0] inStream_TLAST_int_regslice;
wire    regslice_both_inStream_V_last_V_U_vld_out;
wire    regslice_both_inStream_V_last_V_U_ack_in;
wire    regslice_both_inStream_V_id_V_U_apdone_blk;
wire   [4:0] inStream_TID_int_regslice;
wire    regslice_both_inStream_V_id_V_U_vld_out;
wire    regslice_both_inStream_V_id_V_U_ack_in;
wire    regslice_both_inStream_V_dest_V_U_apdone_blk;
wire   [5:0] inStream_TDEST_int_regslice;
wire    regslice_both_inStream_V_dest_V_U_vld_out;
wire    regslice_both_inStream_V_dest_V_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg = 1'b0;
#0 grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg = 1'b0;
end

doHist_doHist_Pipeline_VITIS_LOOP_12_1 grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start),
    .ap_done(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_done),
    .ap_idle(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_idle),
    .ap_ready(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_ready),
    .histo_Addr_A(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_Addr_A),
    .histo_EN_A(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_EN_A),
    .histo_WEN_A(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_WEN_A),
    .histo_Din_A(grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_Din_A),
    .histo_Dout_A(32'd0)
);

doHist_doHist_Pipeline_VITIS_LOOP_19_2 grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start),
    .ap_done(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_done),
    .ap_idle(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_idle),
    .ap_ready(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_ready),
    .inStream_TVALID(inStream_TVALID_int_regslice),
    .inStream_TDATA(inStream_TDATA_int_regslice),
    .inStream_TREADY(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_inStream_TREADY),
    .inStream_TKEEP(inStream_TKEEP_int_regslice),
    .inStream_TSTRB(inStream_TSTRB_int_regslice),
    .inStream_TUSER(inStream_TUSER_int_regslice),
    .inStream_TLAST(inStream_TLAST_int_regslice),
    .inStream_TID(inStream_TID_int_regslice),
    .inStream_TDEST(inStream_TDEST_int_regslice),
    .histo_Addr_A(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Addr_A),
    .histo_EN_A(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_EN_A),
    .histo_WEN_A(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A),
    .histo_Din_A(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Din_A),
    .histo_Dout_A(32'd0),
    .histo_Addr_B(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Addr_B),
    .histo_EN_B(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_EN_B),
    .histo_WEN_B(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_B),
    .histo_Din_B(grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Din_B),
    .histo_Dout_B(histo_Dout_B)
);

doHist_ctrl_bus_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CTRL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CTRL_BUS_DATA_WIDTH ))
ctrl_bus_s_axi_U(
    .AWVALID(s_axi_ctrl_bus_AWVALID),
    .AWREADY(s_axi_ctrl_bus_AWREADY),
    .AWADDR(s_axi_ctrl_bus_AWADDR),
    .WVALID(s_axi_ctrl_bus_WVALID),
    .WREADY(s_axi_ctrl_bus_WREADY),
    .WDATA(s_axi_ctrl_bus_WDATA),
    .WSTRB(s_axi_ctrl_bus_WSTRB),
    .ARVALID(s_axi_ctrl_bus_ARVALID),
    .ARREADY(s_axi_ctrl_bus_ARREADY),
    .ARADDR(s_axi_ctrl_bus_ARADDR),
    .RVALID(s_axi_ctrl_bus_RVALID),
    .RREADY(s_axi_ctrl_bus_RREADY),
    .RDATA(s_axi_ctrl_bus_RDATA),
    .RRESP(s_axi_ctrl_bus_RRESP),
    .BVALID(s_axi_ctrl_bus_BVALID),
    .BREADY(s_axi_ctrl_bus_BREADY),
    .BRESP(s_axi_ctrl_bus_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_local_deadlock(ap_local_deadlock)
);

doHist_regslice_both #(
    .DataWidth( 8 ))
regslice_both_inStream_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TDATA),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_data_V_U_ack_in),
    .data_out(inStream_TDATA_int_regslice),
    .vld_out(inStream_TVALID_int_regslice),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_data_V_U_apdone_blk)
);

doHist_regslice_both #(
    .DataWidth( 1 ))
regslice_both_inStream_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TKEEP),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_keep_V_U_ack_in),
    .data_out(inStream_TKEEP_int_regslice),
    .vld_out(regslice_both_inStream_V_keep_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_keep_V_U_apdone_blk)
);

doHist_regslice_both #(
    .DataWidth( 1 ))
regslice_both_inStream_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TSTRB),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_strb_V_U_ack_in),
    .data_out(inStream_TSTRB_int_regslice),
    .vld_out(regslice_both_inStream_V_strb_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_strb_V_U_apdone_blk)
);

doHist_regslice_both #(
    .DataWidth( 2 ))
regslice_both_inStream_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TUSER),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_user_V_U_ack_in),
    .data_out(inStream_TUSER_int_regslice),
    .vld_out(regslice_both_inStream_V_user_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_user_V_U_apdone_blk)
);

doHist_regslice_both #(
    .DataWidth( 1 ))
regslice_both_inStream_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TLAST),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_last_V_U_ack_in),
    .data_out(inStream_TLAST_int_regslice),
    .vld_out(regslice_both_inStream_V_last_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_last_V_U_apdone_blk)
);

doHist_regslice_both #(
    .DataWidth( 5 ))
regslice_both_inStream_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TID),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_id_V_U_ack_in),
    .data_out(inStream_TID_int_regslice),
    .vld_out(regslice_both_inStream_V_id_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_id_V_U_apdone_blk)
);

doHist_regslice_both #(
    .DataWidth( 6 ))
regslice_both_inStream_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(inStream_TDEST),
    .vld_in(inStream_TVALID),
    .ack_in(regslice_both_inStream_V_dest_V_U_ack_in),
    .data_out(inStream_TDEST_int_regslice),
    .vld_out(regslice_both_inStream_V_dest_V_U_vld_out),
    .ack_out(inStream_TREADY_int_regslice),
    .apdone_blk(regslice_both_inStream_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_ready == 1'b1)) begin
            grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg <= 1'b1;
        end else if ((grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_ready == 1'b1)) begin
            grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        histo_Addr_A = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Addr_A;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        histo_Addr_A = grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_Addr_A;
    end else begin
        histo_Addr_A = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        histo_Din_A = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Din_A;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        histo_Din_A = grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_Din_A;
    end else begin
        histo_Din_A = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        histo_EN_A = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_EN_A;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        histo_EN_A = grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_EN_A;
    end else begin
        histo_EN_A = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        histo_EN_B = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_EN_B;
    end else begin
        histo_EN_B = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        histo_WEN_A = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_WEN_A;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        histo_WEN_A = grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_histo_WEN_A;
    end else begin
        histo_WEN_A = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        inStream_TREADY_int_regslice = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_inStream_TREADY;
    end else begin
        inStream_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'd0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start = grp_doHist_Pipeline_VITIS_LOOP_12_1_fu_48_ap_start_reg;

assign grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_ap_start_reg;

assign histo_Addr_B = grp_doHist_Pipeline_VITIS_LOOP_19_2_fu_54_histo_Addr_B;

assign histo_Clk_A = ap_clk;

assign histo_Clk_B = ap_clk;

assign histo_Din_B = 32'd0;

assign histo_Rst_A = ap_rst_n_inv;

assign histo_Rst_B = ap_rst_n_inv;

assign histo_WEN_B = 4'd0;

assign inStream_TREADY = regslice_both_inStream_V_data_V_U_ack_in;

endmodule //doHist
