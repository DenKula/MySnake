// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xsneakysnake_bit.h"

extern XSneakysnake_bit_Config XSneakysnake_bit_ConfigTable[];

#ifdef SDT
XSneakysnake_bit_Config *XSneakysnake_bit_LookupConfig(UINTPTR BaseAddress) {
	XSneakysnake_bit_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSneakysnake_bit_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSneakysnake_bit_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSneakysnake_bit_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSneakysnake_bit_Initialize(XSneakysnake_bit *InstancePtr, UINTPTR BaseAddress) {
	XSneakysnake_bit_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSneakysnake_bit_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSneakysnake_bit_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSneakysnake_bit_Config *XSneakysnake_bit_LookupConfig(u16 DeviceId) {
	XSneakysnake_bit_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSNEAKYSNAKE_BIT_NUM_INSTANCES; Index++) {
		if (XSneakysnake_bit_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSneakysnake_bit_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSneakysnake_bit_Initialize(XSneakysnake_bit *InstancePtr, u16 DeviceId) {
	XSneakysnake_bit_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSneakysnake_bit_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSneakysnake_bit_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

