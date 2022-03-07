// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdocontrast.h"

extern XDocontrast_Config XDocontrast_ConfigTable[];

XDocontrast_Config *XDocontrast_LookupConfig(u16 DeviceId) {
	XDocontrast_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOCONTRAST_NUM_INSTANCES; Index++) {
		if (XDocontrast_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDocontrast_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDocontrast_Initialize(XDocontrast *InstancePtr, u16 DeviceId) {
	XDocontrast_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDocontrast_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDocontrast_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

