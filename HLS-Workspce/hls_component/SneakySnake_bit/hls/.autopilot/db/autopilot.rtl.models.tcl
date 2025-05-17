set SynModuleInfo {
  {SRCNAME NeighborhoodMap_bit MODELNAME NeighborhoodMap_bit RTLNAME SneakySnake_bit_NeighborhoodMap_bit}
  {SRCNAME count_one_bit MODELNAME count_one_bit RTLNAME SneakySnake_bit_count_one_bit
    SUBMODULES {
      {MODELNAME SneakySnake_bit_sparsemux_17_7_4_1_1 RTLNAME SneakySnake_bit_sparsemux_17_7_4_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME after_neighbohood MODELNAME after_neighbohood RTLNAME SneakySnake_bit_after_neighbohood}
  {SRCNAME SneakySnake_bit MODELNAME SneakySnake_bit RTLNAME SneakySnake_bit IS_TOP 1
    SUBMODULES {
      {MODELNAME SneakySnake_bit_control_s_axi RTLNAME SneakySnake_bit_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME SneakySnake_bit_flow_control_loop_delay_pipe RTLNAME SneakySnake_bit_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME SneakySnake_bit_flow_control_loop_delay_pipe_U}
    }
  }
}
