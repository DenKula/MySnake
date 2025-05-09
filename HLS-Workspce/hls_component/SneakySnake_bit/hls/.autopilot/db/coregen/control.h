// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of ReadLength
//        bit 31~0 - ReadLength[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[31:0] (Read/Write)
// 0x24 : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[63:32] (Read/Write)
// 0x28 : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[95:64] (Read/Write)
// 0x2c : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[127:96] (Read/Write)
// 0x30 : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[159:128] (Read/Write)
// 0x34 : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[191:160] (Read/Write)
// 0x38 : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[223:192] (Read/Write)
// 0x3c : Data signal of ReadSeq
//        bit 31~0 - ReadSeq[255:224] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of RefSeq
//        bit 31~0 - RefSeq[31:0] (Read/Write)
// 0x48 : Data signal of RefSeq
//        bit 31~0 - RefSeq[63:32] (Read/Write)
// 0x4c : Data signal of RefSeq
//        bit 31~0 - RefSeq[95:64] (Read/Write)
// 0x50 : Data signal of RefSeq
//        bit 31~0 - RefSeq[127:96] (Read/Write)
// 0x54 : Data signal of RefSeq
//        bit 31~0 - RefSeq[159:128] (Read/Write)
// 0x58 : Data signal of RefSeq
//        bit 31~0 - RefSeq[191:160] (Read/Write)
// 0x5c : Data signal of RefSeq
//        bit 31~0 - RefSeq[223:192] (Read/Write)
// 0x60 : Data signal of RefSeq
//        bit 31~0 - RefSeq[255:224] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of EditThreshold
//        bit 31~0 - EditThreshold[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of KmerSize
//        bit 31~0 - KmerSize[31:0] (Read/Write)
// 0x74 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL            0x00
#define CONTROL_ADDR_GIE                0x04
#define CONTROL_ADDR_IER                0x08
#define CONTROL_ADDR_ISR                0x0c
#define CONTROL_ADDR_AP_RETURN          0x10
#define CONTROL_BITS_AP_RETURN          32
#define CONTROL_ADDR_READLENGTH_DATA    0x18
#define CONTROL_BITS_READLENGTH_DATA    32
#define CONTROL_ADDR_READSEQ_DATA       0x20
#define CONTROL_BITS_READSEQ_DATA       256
#define CONTROL_ADDR_REFSEQ_DATA        0x44
#define CONTROL_BITS_REFSEQ_DATA        256
#define CONTROL_ADDR_EDITTHRESHOLD_DATA 0x68
#define CONTROL_BITS_EDITTHRESHOLD_DATA 32
#define CONTROL_ADDR_KMERSIZE_DATA      0x70
#define CONTROL_BITS_KMERSIZE_DATA      32
