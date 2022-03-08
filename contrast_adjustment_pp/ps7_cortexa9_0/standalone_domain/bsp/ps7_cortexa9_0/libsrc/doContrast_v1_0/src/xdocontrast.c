// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdocontrast.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDocontrast_CfgInitialize(XDocontrast *InstancePtr, XDocontrast_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDocontrast_Start(XDocontrast *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDocontrast_IsDone(XDocontrast *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDocontrast_IsIdle(XDocontrast *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDocontrast_IsReady(XDocontrast *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDocontrast_EnableAutoRestart(XDocontrast *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XDocontrast_DisableAutoRestart(XDocontrast *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XDocontrast_Set_xMin(XDocontrast *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_XMIN_DATA, Data);
}

u32 XDocontrast_Get_xMin(XDocontrast *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_XMIN_DATA);
    return Data;
}

void XDocontrast_Set_xMax(XDocontrast *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_XMAX_DATA, Data);
}

u32 XDocontrast_Get_xMax(XDocontrast *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_XMAX_DATA);
    return Data;
}

void XDocontrast_InterruptGlobalEnable(XDocontrast *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_GIE, 1);
}

void XDocontrast_InterruptGlobalDisable(XDocontrast *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_GIE, 0);
}

void XDocontrast_InterruptEnable(XDocontrast *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_IER);
    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XDocontrast_InterruptDisable(XDocontrast *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_IER);
    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XDocontrast_InterruptClear(XDocontrast *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDocontrast_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XDocontrast_InterruptGetEnabled(XDocontrast *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_IER);
}

u32 XDocontrast_InterruptGetStatus(XDocontrast *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDocontrast_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XDOCONTRAST_CTRL_BUS_ADDR_ISR);
}

