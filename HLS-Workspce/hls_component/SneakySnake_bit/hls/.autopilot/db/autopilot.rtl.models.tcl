set SynModuleInfo {
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1
    SUBMODULES {
      {MODELNAME SneakySnake_bit_partselect_2ns_256ns_32ns_2_1_1 RTLNAME SneakySnake_bit_partselect_2ns_256ns_32ns_2_1_1 BINDTYPE op TYPE partselect IMPL auto}
      {MODELNAME SneakySnake_bit_partset_128ns_128ns_2ns_32ns_128_1_1 RTLNAME SneakySnake_bit_partset_128ns_128ns_2ns_32ns_128_1_1 BINDTYPE op TYPE partset IMPL auto}
      {MODELNAME SneakySnake_bit_flow_control_loop_pipe_sequential_init RTLNAME SneakySnake_bit_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME SneakySnake_bit_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10}
  {SRCNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11 MODELNAME NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11 RTLNAME SneakySnake_bit_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11}
  {SRCNAME NeighborhoodMap_bit MODELNAME NeighborhoodMap_bit RTLNAME SneakySnake_bit_NeighborhoodMap_bit}
  {SRCNAME count_one_bit MODELNAME count_one_bit RTLNAME SneakySnake_bit_count_one_bit
    SUBMODULES {
      {MODELNAME SneakySnake_bit_sparsemux_15_6_3_1_1 RTLNAME SneakySnake_bit_sparsemux_15_6_3_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_707_1_proc MODELNAME Loop_VITIS_LOOP_707_1_proc RTLNAME SneakySnake_bit_Loop_VITIS_LOOP_707_1_proc
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
