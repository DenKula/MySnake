// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="SneakySnake_bit_SneakySnake_bit,hls_ip_2024_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=11.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.806429,HLS_SYN_LAT=172,HLS_SYN_TPT=132,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=8289,HLS_SYN_LUT=17583,HLS_VERSION=2024_2}" *)

module SneakySnake_bit (
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt
);

parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 7;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;

(* shreg_extract = "no" *) reg    ap_rst_reg_2;
(* shreg_extract = "no" *) reg    ap_rst_reg_1;
(* shreg_extract = "no" *) reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_continue;
wire    ap_idle;
wire   [31:0] ap_return;
wire   [31:0] ReadLength;
wire   [255:0] ReadSeq;
wire   [255:0] RefSeq;
wire   [31:0] EditThreshold;
wire   [31:0] KmerSize;
wire    NeighborhoodMap_bit_U0_ap_start;
wire    NeighborhoodMap_bit_U0_ap_done;
wire    NeighborhoodMap_bit_U0_ap_continue;
wire    NeighborhoodMap_bit_U0_ap_idle;
wire    NeighborhoodMap_bit_U0_ap_ready;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_0;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_1;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_2;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_3;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_4;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_5;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_6;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_7;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_8;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_9;
wire   [127:0] NeighborhoodMap_bit_U0_ap_return_10;
wire    ap_channel_done_DNA_shr_five;
wire    DNA_shr_five_full_n;
reg    ap_sync_reg_channel_write_DNA_shr_five;
wire    ap_sync_channel_write_DNA_shr_five;
wire    Loop_VITIS_LOOP_707_1_proc_U0_ap_start;
wire    Loop_VITIS_LOOP_707_1_proc_U0_ap_done;
wire    Loop_VITIS_LOOP_707_1_proc_U0_ap_continue;
wire    Loop_VITIS_LOOP_707_1_proc_U0_ap_idle;
wire    Loop_VITIS_LOOP_707_1_proc_U0_ap_ready;
wire   [1:0] Loop_VITIS_LOOP_707_1_proc_U0_ap_return;
wire    add_i_i2_loc_channel_full_n;
wire    Block_entry_proc_proc_U0_ap_start;
wire    Block_entry_proc_proc_U0_ap_done;
wire    Block_entry_proc_proc_U0_ap_continue;
wire    Block_entry_proc_proc_U0_ap_idle;
wire    Block_entry_proc_proc_U0_ap_ready;
wire   [1:0] Block_entry_proc_proc_U0_ap_return;
wire    DNA_nsh_full_n;
wire   [127:0] DNA_nsh_dout;
wire    DNA_nsh_empty_n;
wire   [2:0] DNA_nsh_num_data_valid;
wire   [2:0] DNA_nsh_fifo_cap;
wire    DNA_shl_one_full_n;
wire   [127:0] DNA_shl_one_dout;
wire    DNA_shl_one_empty_n;
wire   [2:0] DNA_shl_one_num_data_valid;
wire   [2:0] DNA_shl_one_fifo_cap;
wire    DNA_shl_two_full_n;
wire   [127:0] DNA_shl_two_dout;
wire    DNA_shl_two_empty_n;
wire   [2:0] DNA_shl_two_num_data_valid;
wire   [2:0] DNA_shl_two_fifo_cap;
wire    DNA_shl_three_full_n;
wire   [127:0] DNA_shl_three_dout;
wire    DNA_shl_three_empty_n;
wire   [2:0] DNA_shl_three_num_data_valid;
wire   [2:0] DNA_shl_three_fifo_cap;
wire    DNA_shl_four_full_n;
wire   [127:0] DNA_shl_four_dout;
wire    DNA_shl_four_empty_n;
wire   [2:0] DNA_shl_four_num_data_valid;
wire   [2:0] DNA_shl_four_fifo_cap;
wire    DNA_shl_five_full_n;
wire   [127:0] DNA_shl_five_dout;
wire    DNA_shl_five_empty_n;
wire   [2:0] DNA_shl_five_num_data_valid;
wire   [2:0] DNA_shl_five_fifo_cap;
wire    DNA_shr_one_full_n;
wire   [127:0] DNA_shr_one_dout;
wire    DNA_shr_one_empty_n;
wire   [2:0] DNA_shr_one_num_data_valid;
wire   [2:0] DNA_shr_one_fifo_cap;
wire    DNA_shr_two_full_n;
wire   [127:0] DNA_shr_two_dout;
wire    DNA_shr_two_empty_n;
wire   [2:0] DNA_shr_two_num_data_valid;
wire   [2:0] DNA_shr_two_fifo_cap;
wire    DNA_shr_three_full_n;
wire   [127:0] DNA_shr_three_dout;
wire    DNA_shr_three_empty_n;
wire   [2:0] DNA_shr_three_num_data_valid;
wire   [2:0] DNA_shr_three_fifo_cap;
wire    DNA_shr_four_full_n;
wire   [127:0] DNA_shr_four_dout;
wire    DNA_shr_four_empty_n;
wire   [2:0] DNA_shr_four_num_data_valid;
wire   [2:0] DNA_shr_four_fifo_cap;
wire   [127:0] DNA_shr_five_dout;
wire    DNA_shr_five_empty_n;
wire   [2:0] DNA_shr_five_num_data_valid;
wire   [2:0] DNA_shr_five_fifo_cap;
wire   [1:0] add_i_i2_loc_channel_dout;
wire    add_i_i2_loc_channel_empty_n;
wire   [2:0] add_i_i2_loc_channel_num_data_valid;
wire   [2:0] add_i_i2_loc_channel_fifo_cap;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_rst_reg_2 = 1'b1;
#0 ap_rst_reg_1 = 1'b1;
#0 ap_rst_n_inv = 1'b1;
#0 ap_sync_reg_channel_write_DNA_shr_five = 1'b0;
end

SneakySnake_bit_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_continue(ap_continue),
    .ap_idle(ap_idle),
    .ap_return(ap_return),
    .ReadLength(ReadLength),
    .ReadSeq(ReadSeq),
    .RefSeq(RefSeq),
    .EditThreshold(EditThreshold),
    .KmerSize(KmerSize)
);

SneakySnake_bit_NeighborhoodMap_bit NeighborhoodMap_bit_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(NeighborhoodMap_bit_U0_ap_start),
    .ap_done(NeighborhoodMap_bit_U0_ap_done),
    .ap_continue(NeighborhoodMap_bit_U0_ap_continue),
    .ap_idle(NeighborhoodMap_bit_U0_ap_idle),
    .ap_ready(NeighborhoodMap_bit_U0_ap_ready),
    .ReadSeq(ReadSeq),
    .RefSeq(RefSeq),
    .ap_return_0(NeighborhoodMap_bit_U0_ap_return_0),
    .ap_return_1(NeighborhoodMap_bit_U0_ap_return_1),
    .ap_return_2(NeighborhoodMap_bit_U0_ap_return_2),
    .ap_return_3(NeighborhoodMap_bit_U0_ap_return_3),
    .ap_return_4(NeighborhoodMap_bit_U0_ap_return_4),
    .ap_return_5(NeighborhoodMap_bit_U0_ap_return_5),
    .ap_return_6(NeighborhoodMap_bit_U0_ap_return_6),
    .ap_return_7(NeighborhoodMap_bit_U0_ap_return_7),
    .ap_return_8(NeighborhoodMap_bit_U0_ap_return_8),
    .ap_return_9(NeighborhoodMap_bit_U0_ap_return_9),
    .ap_return_10(NeighborhoodMap_bit_U0_ap_return_10)
);

SneakySnake_bit_Loop_VITIS_LOOP_707_1_proc Loop_VITIS_LOOP_707_1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_VITIS_LOOP_707_1_proc_U0_ap_start),
    .ap_done(Loop_VITIS_LOOP_707_1_proc_U0_ap_done),
    .ap_continue(Loop_VITIS_LOOP_707_1_proc_U0_ap_continue),
    .ap_idle(Loop_VITIS_LOOP_707_1_proc_U0_ap_idle),
    .ap_ready(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .p_read(DNA_nsh_dout),
    .p_read1(DNA_shl_one_dout),
    .p_read2(DNA_shl_two_dout),
    .p_read3(DNA_shl_three_dout),
    .p_read4(DNA_shl_four_dout),
    .p_read5(DNA_shl_five_dout),
    .p_read6(DNA_shr_one_dout),
    .p_read7(DNA_shr_two_dout),
    .p_read8(DNA_shr_three_dout),
    .p_read9(DNA_shr_four_dout),
    .p_read10(DNA_shr_five_dout),
    .ap_return(Loop_VITIS_LOOP_707_1_proc_U0_ap_return)
);

SneakySnake_bit_Block_entry_proc_proc Block_entry_proc_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_entry_proc_proc_U0_ap_start),
    .ap_done(Block_entry_proc_proc_U0_ap_done),
    .ap_continue(Block_entry_proc_proc_U0_ap_continue),
    .ap_idle(Block_entry_proc_proc_U0_ap_idle),
    .ap_ready(Block_entry_proc_proc_U0_ap_ready),
    .p_read(add_i_i2_loc_channel_dout),
    .ap_return(Block_entry_proc_proc_U0_ap_return)
);

SneakySnake_bit_fifo_w128_d2_S DNA_nsh_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_0),
    .if_full_n(DNA_nsh_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_nsh_dout),
    .if_empty_n(DNA_nsh_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_nsh_num_data_valid),
    .if_fifo_cap(DNA_nsh_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shl_one_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_1),
    .if_full_n(DNA_shl_one_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shl_one_dout),
    .if_empty_n(DNA_shl_one_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shl_one_num_data_valid),
    .if_fifo_cap(DNA_shl_one_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shl_two_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_2),
    .if_full_n(DNA_shl_two_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shl_two_dout),
    .if_empty_n(DNA_shl_two_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shl_two_num_data_valid),
    .if_fifo_cap(DNA_shl_two_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shl_three_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_3),
    .if_full_n(DNA_shl_three_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shl_three_dout),
    .if_empty_n(DNA_shl_three_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shl_three_num_data_valid),
    .if_fifo_cap(DNA_shl_three_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shl_four_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_4),
    .if_full_n(DNA_shl_four_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shl_four_dout),
    .if_empty_n(DNA_shl_four_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shl_four_num_data_valid),
    .if_fifo_cap(DNA_shl_four_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shl_five_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_5),
    .if_full_n(DNA_shl_five_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shl_five_dout),
    .if_empty_n(DNA_shl_five_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shl_five_num_data_valid),
    .if_fifo_cap(DNA_shl_five_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shr_one_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_6),
    .if_full_n(DNA_shr_one_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shr_one_dout),
    .if_empty_n(DNA_shr_one_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shr_one_num_data_valid),
    .if_fifo_cap(DNA_shr_one_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shr_two_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_7),
    .if_full_n(DNA_shr_two_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shr_two_dout),
    .if_empty_n(DNA_shr_two_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shr_two_num_data_valid),
    .if_fifo_cap(DNA_shr_two_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shr_three_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_8),
    .if_full_n(DNA_shr_three_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shr_three_dout),
    .if_empty_n(DNA_shr_three_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shr_three_num_data_valid),
    .if_fifo_cap(DNA_shr_three_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shr_four_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_9),
    .if_full_n(DNA_shr_four_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shr_four_dout),
    .if_empty_n(DNA_shr_four_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shr_four_num_data_valid),
    .if_fifo_cap(DNA_shr_four_fifo_cap)
);

SneakySnake_bit_fifo_w128_d2_S DNA_shr_five_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NeighborhoodMap_bit_U0_ap_return_10),
    .if_full_n(DNA_shr_five_full_n),
    .if_write(ap_channel_done_DNA_shr_five),
    .if_dout(DNA_shr_five_dout),
    .if_empty_n(DNA_shr_five_empty_n),
    .if_read(Loop_VITIS_LOOP_707_1_proc_U0_ap_ready),
    .if_num_data_valid(DNA_shr_five_num_data_valid),
    .if_fifo_cap(DNA_shr_five_fifo_cap)
);

SneakySnake_bit_fifo_w2_d2_S add_i_i2_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_VITIS_LOOP_707_1_proc_U0_ap_return),
    .if_full_n(add_i_i2_loc_channel_full_n),
    .if_write(Loop_VITIS_LOOP_707_1_proc_U0_ap_done),
    .if_dout(add_i_i2_loc_channel_dout),
    .if_empty_n(add_i_i2_loc_channel_empty_n),
    .if_read(Block_entry_proc_proc_U0_ap_ready),
    .if_num_data_valid(add_i_i2_loc_channel_num_data_valid),
    .if_fifo_cap(add_i_i2_loc_channel_fifo_cap)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_DNA_shr_five <= 1'b0;
    end else begin
        if (((NeighborhoodMap_bit_U0_ap_done & NeighborhoodMap_bit_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_DNA_shr_five <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_DNA_shr_five <= ap_sync_channel_write_DNA_shr_five;
        end
    end
end

always @ (posedge ap_clk) begin
    ap_rst_n_inv <= ap_rst_reg_1;
end

always @ (posedge ap_clk) begin
    ap_rst_reg_1 <= ap_rst_reg_2;
end

always @ (posedge ap_clk) begin
    ap_rst_reg_2 <= ~ap_rst_n;
end

assign Block_entry_proc_proc_U0_ap_continue = ap_continue;

assign Block_entry_proc_proc_U0_ap_start = add_i_i2_loc_channel_empty_n;

assign Loop_VITIS_LOOP_707_1_proc_U0_ap_continue = add_i_i2_loc_channel_full_n;

assign Loop_VITIS_LOOP_707_1_proc_U0_ap_start = DNA_nsh_empty_n;

assign NeighborhoodMap_bit_U0_ap_continue = ap_sync_channel_write_DNA_shr_five;

assign NeighborhoodMap_bit_U0_ap_start = ap_start;

assign ap_channel_done_DNA_shr_five = ((ap_sync_reg_channel_write_DNA_shr_five ^ 1'b1) & NeighborhoodMap_bit_U0_ap_done);

assign ap_done = Block_entry_proc_proc_U0_ap_done;

assign ap_idle = ((1'b1 ^ add_i_i2_loc_channel_empty_n) & (1'b1 ^ DNA_nsh_empty_n) & NeighborhoodMap_bit_U0_ap_idle & Loop_VITIS_LOOP_707_1_proc_U0_ap_idle & Block_entry_proc_proc_U0_ap_idle);

assign ap_ready = NeighborhoodMap_bit_U0_ap_ready;

assign ap_return = Block_entry_proc_proc_U0_ap_return;

assign ap_sync_channel_write_DNA_shr_five = ((ap_channel_done_DNA_shr_five & DNA_shr_five_full_n) | ap_sync_reg_channel_write_DNA_shr_five);

endmodule //SneakySnake_bit
