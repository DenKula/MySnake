set SynModuleInfo {
  {SRCNAME NeighborhoodMap_bit MODELNAME NeighborhoodMap_bit RTLNAME SneakySnake_bit_NeighborhoodMap_bit}
  {SRCNAME count_one_bit MODELNAME count_one_bit RTLNAME SneakySnake_bit_count_one_bit
    SUBMODULES {
      {MODELNAME SneakySnake_bit_sparsemux_15_6_3_1_1 RTLNAME SneakySnake_bit_sparsemux_15_6_3_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME after_neighbohood MODELNAME after_neighbohood RTLNAME SneakySnake_bit_after_neighbohood}
  {SRCNAME Loop_VITIS_LOOP_709_1_proc MODELNAME Loop_VITIS_LOOP_709_1_proc RTLNAME SneakySnake_bit_Loop_VITIS_LOOP_709_1_proc
    SUBMODULES {
      {MODELNAME SneakySnake_bit_flow_control_loop_delay_pipe RTLNAME SneakySnake_bit_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME SneakySnake_bit_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME Block_entry_proc_proc MODELNAME Block_entry_proc_proc RTLNAME SneakySnake_bit_Block_entry_proc_proc}
  {SRCNAME SneakySnake_bit MODELNAME SneakySnake_bit RTLNAME SneakySnake_bit IS_TOP 1
    SUBMODULES {
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_nsh_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shl_one_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shl_two_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shl_three_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shl_four_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shl_five_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shr_one_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shr_two_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shr_three_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shr_four_U}
      {MODELNAME SneakySnake_bit_fifo_w128_d2_S RTLNAME SneakySnake_bit_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME DNA_shr_five_U}
      {MODELNAME SneakySnake_bit_fifo_w2_d2_S RTLNAME SneakySnake_bit_fifo_w2_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME add_i_i2_loc_channel_U}
      {MODELNAME SneakySnake_bit_control_s_axi RTLNAME SneakySnake_bit_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
