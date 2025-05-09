// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsneakysnake_bit.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSneakysnake_bit_CfgInitialize(XSneakysnake_bit *InstancePtr, XSneakysnake_bit_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSneakysnake_bit_Start(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSneakysnake_bit_IsDone(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSneakysnake_bit_IsIdle(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSneakysnake_bit_IsReady(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSneakysnake_bit_Continue(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XSneakysnake_bit_EnableAutoRestart(XSneakysnake_bit *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSneakysnake_bit_DisableAutoRestart(XSneakysnake_bit *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XSneakysnake_bit_Get_return(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XSneakysnake_bit_Set_ReadLength(XSneakysnake_bit *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READLENGTH_DATA, Data);
}

u32 XSneakysnake_bit_Get_ReadLength(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READLENGTH_DATA);
    return Data;
}

void XSneakysnake_bit_Set_ReadSeq(XSneakysnake_bit *InstancePtr, XSneakysnake_bit_Readseq Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 0, Data.word_0);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 4, Data.word_1);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 8, Data.word_2);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 12, Data.word_3);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 16, Data.word_4);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 20, Data.word_5);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 24, Data.word_6);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 28, Data.word_7);
}

XSneakysnake_bit_Readseq XSneakysnake_bit_Get_ReadSeq(XSneakysnake_bit *InstancePtr) {
    XSneakysnake_bit_Readseq Data;

    Data.word_0 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 0);
    Data.word_1 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 4);
    Data.word_2 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 8);
    Data.word_3 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 12);
    Data.word_4 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 16);
    Data.word_5 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 20);
    Data.word_6 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 24);
    Data.word_7 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_READSEQ_DATA + 28);
    return Data;
}

void XSneakysnake_bit_Set_RefSeq(XSneakysnake_bit *InstancePtr, XSneakysnake_bit_Refseq Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 0, Data.word_0);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 4, Data.word_1);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 8, Data.word_2);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 12, Data.word_3);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 16, Data.word_4);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 20, Data.word_5);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 24, Data.word_6);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 28, Data.word_7);
}

XSneakysnake_bit_Refseq XSneakysnake_bit_Get_RefSeq(XSneakysnake_bit *InstancePtr) {
    XSneakysnake_bit_Refseq Data;

    Data.word_0 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 0);
    Data.word_1 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 4);
    Data.word_2 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 8);
    Data.word_3 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 12);
    Data.word_4 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 16);
    Data.word_5 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 20);
    Data.word_6 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 24);
    Data.word_7 = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_REFSEQ_DATA + 28);
    return Data;
}

void XSneakysnake_bit_Set_EditThreshold(XSneakysnake_bit *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_EDITTHRESHOLD_DATA, Data);
}

u32 XSneakysnake_bit_Get_EditThreshold(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_EDITTHRESHOLD_DATA);
    return Data;
}

void XSneakysnake_bit_Set_KmerSize(XSneakysnake_bit *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_KMERSIZE_DATA, Data);
}

u32 XSneakysnake_bit_Get_KmerSize(XSneakysnake_bit *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_KMERSIZE_DATA);
    return Data;
}

void XSneakysnake_bit_InterruptGlobalEnable(XSneakysnake_bit *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_GIE, 1);
}

void XSneakysnake_bit_InterruptGlobalDisable(XSneakysnake_bit *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_GIE, 0);
}

void XSneakysnake_bit_InterruptEnable(XSneakysnake_bit *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_IER);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_IER, Register | Mask);
}

void XSneakysnake_bit_InterruptDisable(XSneakysnake_bit *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_IER);
    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSneakysnake_bit_InterruptClear(XSneakysnake_bit *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSneakysnake_bit_WriteReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_ISR, Mask);
}

u32 XSneakysnake_bit_InterruptGetEnabled(XSneakysnake_bit *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_IER);
}

u32 XSneakysnake_bit_InterruptGetStatus(XSneakysnake_bit *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSneakysnake_bit_ReadReg(InstancePtr->Control_BaseAddress, XSNEAKYSNAKE_BIT_CONTROL_ADDR_ISR);
}

