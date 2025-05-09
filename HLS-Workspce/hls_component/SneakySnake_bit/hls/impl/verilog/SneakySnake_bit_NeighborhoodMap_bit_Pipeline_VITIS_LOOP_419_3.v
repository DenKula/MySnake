// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        DNA_3,
        storemerge852_i_out,
        storemerge852_i_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [255:0] DNA_3;
output  [127:0] storemerge852_i_out;
output   storemerge852_i_out_ap_vld;

reg ap_idle;
reg storemerge852_i_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln419_fu_90_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] index_3_fu_52;
wire   [6:0] index_14_fu_96_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_index;
reg   [7:0] i_3_fu_56;
wire   [7:0] i_fu_184_p2;
reg   [7:0] ap_sig_allocacmp_i_3_load;
reg   [127:0] storemerge852_i_fu_60;
wire   [127:0] storemerge8_i_fu_174_p4;
wire   [31:0] tmp_2_i_fu_112_p2;
wire   [6:0] tmp_5_fu_120_p4;
wire   [7:0] or_ln2_fu_130_p3;
wire   [31:0] tmp_10_i_fu_142_p2;
wire   [1:0] tmp_2_i_fu_112_p3;
wire   [1:0] tmp_10_i_fu_142_p3;
wire   [1:0] or_ln422_fu_150_p2;
wire   [0:0] icmp_ln422_fu_156_p2;
wire   [1:0] storemerge8_i_fu_174_p2;
wire   [31:0] storemerge8_i_fu_174_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_2_i_fu_112_p0;
wire   [1:0] tmp_10_i_fu_142_p0;
wire   [127:0] storemerge8_i_fu_174_p0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 index_3_fu_52 = 7'd0;
#0 i_3_fu_56 = 8'd0;
#0 storemerge852_i_fu_60 = 128'd0;
#0 ap_done_reg = 1'b0;
end

SneakySnake_bit_partselect_2ns_256ns_32ns_2_1_1 #(
    .DATAWIDTH( 256 ),
    .ADDRWIDTH( 32 ),
    .DATA1WIDTH( 2 ))
partselect_2ns_256ns_32ns_2_1_1_U13(
    .din(DNA_3),
    .sel(tmp_2_i_fu_112_p2),
    .dout(tmp_2_i_fu_112_p3)
);

SneakySnake_bit_partselect_2ns_256ns_32ns_2_1_1 #(
    .DATAWIDTH( 256 ),
    .ADDRWIDTH( 32 ),
    .DATA1WIDTH( 2 ))
partselect_2ns_256ns_32ns_2_1_1_U14(
    .din(DNA_3),
    .sel(tmp_10_i_fu_142_p2),
    .dout(tmp_10_i_fu_142_p3)
);

SneakySnake_bit_partset_128ns_128ns_2ns_32ns_128_1_1 #(
    .DATAWIDTH( 128 ),
    .DATA1WIDTH( 2 ),
    .ADDRWIDTH( 32 ))
partset_128ns_128ns_2ns_32ns_128_1_1_U15(
    .din(storemerge852_i_fu_60),
    .value(storemerge8_i_fu_174_p2),
    .sel(storemerge8_i_fu_174_p3),
    .dout(storemerge8_i_fu_174_p4)
);

SneakySnake_bit_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln419_fu_90_p2 == 1'd0)) begin
            i_3_fu_56 <= i_fu_184_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_3_fu_56 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln419_fu_90_p2 == 1'd0)) begin
            index_3_fu_52 <= index_14_fu_96_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            index_3_fu_52 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln419_fu_90_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        storemerge852_i_fu_60 <= storemerge8_i_fu_174_p4;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln419_fu_90_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_3_load = 8'd0;
    end else begin
        ap_sig_allocacmp_i_3_load = i_3_fu_56;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_index = 7'd0;
    end else begin
        ap_sig_allocacmp_index = index_3_fu_52;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln419_fu_90_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        storemerge852_i_out_ap_vld = 1'b1;
    end else begin
        storemerge852_i_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_done = ap_done_sig;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign i_fu_184_p2 = (ap_sig_allocacmp_i_3_load + 8'd2);

assign icmp_ln419_fu_90_p2 = ((ap_sig_allocacmp_index == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln422_fu_156_p2 = ((or_ln422_fu_150_p2 == 2'd0) ? 1'b1 : 1'b0);

assign index_14_fu_96_p2 = (ap_sig_allocacmp_index + 7'd1);

assign or_ln2_fu_130_p3 = {{tmp_5_fu_120_p4}, {1'd1}};

assign or_ln422_fu_150_p2 = (tmp_2_i_fu_112_p3 | tmp_10_i_fu_142_p3);

assign storemerge852_i_out = storemerge852_i_fu_60;

assign storemerge8_i_fu_174_p2 = ((icmp_ln422_fu_156_p2[0:0] == 1'b1) ? 2'd0 : 2'd1);

assign storemerge8_i_fu_174_p3 = ap_sig_allocacmp_index;

assign tmp_10_i_fu_142_p2 = or_ln2_fu_130_p3;

assign tmp_2_i_fu_112_p2 = ap_sig_allocacmp_i_3_load;

assign tmp_5_fu_120_p4 = {{ap_sig_allocacmp_i_3_load[7:1]}};

endmodule //SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3
