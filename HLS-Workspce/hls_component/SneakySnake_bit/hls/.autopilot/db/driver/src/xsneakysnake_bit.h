// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSNEAKYSNAKE_BIT_H
#define XSNEAKYSNAKE_BIT_H

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
#include "xsneakysnake_bit_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XSneakysnake_bit_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSneakysnake_bit;

typedef u32 word_type;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
} XSneakysnake_bit_Readseq;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
} XSneakysnake_bit_Refseq;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSneakysnake_bit_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSneakysnake_bit_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSneakysnake_bit_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSneakysnake_bit_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XSneakysnake_bit_Initialize(XSneakysnake_bit *InstancePtr, UINTPTR BaseAddress);
XSneakysnake_bit_Config* XSneakysnake_bit_LookupConfig(UINTPTR BaseAddress);
#else
int XSneakysnake_bit_Initialize(XSneakysnake_bit *InstancePtr, u16 DeviceId);
XSneakysnake_bit_Config* XSneakysnake_bit_LookupConfig(u16 DeviceId);
#endif
int XSneakysnake_bit_CfgInitialize(XSneakysnake_bit *InstancePtr, XSneakysnake_bit_Config *ConfigPtr);
#else
int XSneakysnake_bit_Initialize(XSneakysnake_bit *InstancePtr, const char* InstanceName);
int XSneakysnake_bit_Release(XSneakysnake_bit *InstancePtr);
#endif

void XSneakysnake_bit_Start(XSneakysnake_bit *InstancePtr);
u32 XSneakysnake_bit_IsDone(XSneakysnake_bit *InstancePtr);
u32 XSneakysnake_bit_IsIdle(XSneakysnake_bit *InstancePtr);
u32 XSneakysnake_bit_IsReady(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_Continue(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_EnableAutoRestart(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_DisableAutoRestart(XSneakysnake_bit *InstancePtr);
u32 XSneakysnake_bit_Get_return(XSneakysnake_bit *InstancePtr);

void XSneakysnake_bit_Set_ReadLength(XSneakysnake_bit *InstancePtr, u32 Data);
u32 XSneakysnake_bit_Get_ReadLength(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_Set_ReadSeq(XSneakysnake_bit *InstancePtr, XSneakysnake_bit_Readseq Data);
XSneakysnake_bit_Readseq XSneakysnake_bit_Get_ReadSeq(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_Set_RefSeq(XSneakysnake_bit *InstancePtr, XSneakysnake_bit_Refseq Data);
XSneakysnake_bit_Refseq XSneakysnake_bit_Get_RefSeq(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_Set_EditThreshold(XSneakysnake_bit *InstancePtr, u32 Data);
u32 XSneakysnake_bit_Get_EditThreshold(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_Set_KmerSize(XSneakysnake_bit *InstancePtr, u32 Data);
u32 XSneakysnake_bit_Get_KmerSize(XSneakysnake_bit *InstancePtr);

void XSneakysnake_bit_InterruptGlobalEnable(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_InterruptGlobalDisable(XSneakysnake_bit *InstancePtr);
void XSneakysnake_bit_InterruptEnable(XSneakysnake_bit *InstancePtr, u32 Mask);
void XSneakysnake_bit_InterruptDisable(XSneakysnake_bit *InstancePtr, u32 Mask);
void XSneakysnake_bit_InterruptClear(XSneakysnake_bit *InstancePtr, u32 Mask);
u32 XSneakysnake_bit_InterruptGetEnabled(XSneakysnake_bit *InstancePtr);
u32 XSneakysnake_bit_InterruptGetStatus(XSneakysnake_bit *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
