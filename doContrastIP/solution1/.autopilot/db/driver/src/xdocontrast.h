// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDOCONTRAST_H
#define XDOCONTRAST_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdocontrast_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XDocontrast_Config;
#endif

typedef struct {
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XDocontrast;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDocontrast_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDocontrast_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDocontrast_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDocontrast_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDocontrast_Initialize(XDocontrast *InstancePtr, u16 DeviceId);
XDocontrast_Config* XDocontrast_LookupConfig(u16 DeviceId);
int XDocontrast_CfgInitialize(XDocontrast *InstancePtr, XDocontrast_Config *ConfigPtr);
#else
int XDocontrast_Initialize(XDocontrast *InstancePtr, const char* InstanceName);
int XDocontrast_Release(XDocontrast *InstancePtr);
#endif

void XDocontrast_Start(XDocontrast *InstancePtr);
u32 XDocontrast_IsDone(XDocontrast *InstancePtr);
u32 XDocontrast_IsIdle(XDocontrast *InstancePtr);
u32 XDocontrast_IsReady(XDocontrast *InstancePtr);
void XDocontrast_EnableAutoRestart(XDocontrast *InstancePtr);
void XDocontrast_DisableAutoRestart(XDocontrast *InstancePtr);

void XDocontrast_Set_xMin(XDocontrast *InstancePtr, u32 Data);
u32 XDocontrast_Get_xMin(XDocontrast *InstancePtr);
void XDocontrast_Set_xMax(XDocontrast *InstancePtr, u32 Data);
u32 XDocontrast_Get_xMax(XDocontrast *InstancePtr);

void XDocontrast_InterruptGlobalEnable(XDocontrast *InstancePtr);
void XDocontrast_InterruptGlobalDisable(XDocontrast *InstancePtr);
void XDocontrast_InterruptEnable(XDocontrast *InstancePtr, u32 Mask);
void XDocontrast_InterruptDisable(XDocontrast *InstancePtr, u32 Mask);
void XDocontrast_InterruptClear(XDocontrast *InstancePtr, u32 Mask);
u32 XDocontrast_InterruptGetEnabled(XDocontrast *InstancePtr);
u32 XDocontrast_InterruptGetStatus(XDocontrast *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
