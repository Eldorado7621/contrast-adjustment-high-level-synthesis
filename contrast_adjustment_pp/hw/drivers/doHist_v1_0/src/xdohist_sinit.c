// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdohist.h"

extern XDohist_Config XDohist_ConfigTable[];

XDohist_Config *XDohist_LookupConfig(u16 DeviceId) {
	XDohist_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOHIST_NUM_INSTANCES; Index++) {
		if (XDohist_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDohist_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDohist_Initialize(XDohist *InstancePtr, u16 DeviceId) {
	XDohist_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDohist_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDohist_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

