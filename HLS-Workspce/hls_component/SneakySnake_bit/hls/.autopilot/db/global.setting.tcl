
set TopModule "SneakySnake_bit"
set ClockPeriod 11
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix SneakySnake_bit_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcvu9p:-flga2104:-2-i
set SourceFiles {sc {} c /home/deniz/Projects/SneakySnake/SneakySnake-HLS-HBM/hw/pipeline.cpp}
set SourceFlags {sc {} c -I/home/deniz/oc-accel/actions/include}
set DirectiveFile {}
set TBFiles {verilog {/home/deniz/Projects/SneakySnake/SneakySnake/kthread.c /home/deniz/Projects/SneakySnake/SneakySnake-HLS-HBM/hw/tb_wrapper.cpp} bc {/home/deniz/Projects/SneakySnake/SneakySnake/kthread.c /home/deniz/Projects/SneakySnake/SneakySnake-HLS-HBM/hw/tb_wrapper.cpp} sc {/home/deniz/Projects/SneakySnake/SneakySnake/kthread.c /home/deniz/Projects/SneakySnake/SneakySnake-HLS-HBM/hw/tb_wrapper.cpp} vhdl {/home/deniz/Projects/SneakySnake/SneakySnake/kthread.c /home/deniz/Projects/SneakySnake/SneakySnake-HLS-HBM/hw/tb_wrapper.cpp} c {} cas {/home/deniz/Projects/SneakySnake/SneakySnake/kthread.c /home/deniz/Projects/SneakySnake/SneakySnake-HLS-HBM/hw/tb_wrapper.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
