set moduleName NeighborhoodMap_bit
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 18
set C_modelName {NeighborhoodMap_bit}
set C_modelType { int 1408 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ ReadSeq int 256 regular {pointer 0}  }
	{ RefSeq int 256 regular {pointer 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ReadSeq", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "RefSeq", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1408} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ReadSeq sc_in sc_lv 256 signal 0 } 
	{ RefSeq sc_in sc_lv 256 signal 1 } 
	{ ap_return_0 sc_out sc_lv 128 signal -1 } 
	{ ap_return_1 sc_out sc_lv 128 signal -1 } 
	{ ap_return_2 sc_out sc_lv 128 signal -1 } 
	{ ap_return_3 sc_out sc_lv 128 signal -1 } 
	{ ap_return_4 sc_out sc_lv 128 signal -1 } 
	{ ap_return_5 sc_out sc_lv 128 signal -1 } 
	{ ap_return_6 sc_out sc_lv 128 signal -1 } 
	{ ap_return_7 sc_out sc_lv 128 signal -1 } 
	{ ap_return_8 sc_out sc_lv 128 signal -1 } 
	{ ap_return_9 sc_out sc_lv 128 signal -1 } 
	{ ap_return_10 sc_out sc_lv 128 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ReadSeq", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ReadSeq", "role": "default" }} , 
 	{ "name": "RefSeq", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "RefSeq", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "11", "16", "21", "26", "31", "36", "41", "46", "51"],
		"CDFG" : "NeighborhoodMap_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ReadSeq", "Type" : "None", "Direction" : "I"},
			{"Name" : "RefSeq", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "DNA_nsh_out_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_380_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.partselect_2ns_256ns_32ns_2_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.partselect_2ns_256ns_32ns_2_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.partset_128ns_128ns_2ns_32ns_128_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge953_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.partselect_2ns_256ns_32ns_2_1_1_U8", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.partselect_2ns_256ns_32ns_2_1_1_U9", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.partset_128ns_128ns_2ns_32ns_128_1_1_U10", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge852_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_419_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.partselect_2ns_256ns_32ns_2_1_1_U13", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.partselect_2ns_256ns_32ns_2_1_1_U14", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.partset_128ns_128ns_2ns_32ns_128_1_1_U15", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176", "Parent" : "0", "Child" : ["17", "18", "19", "20"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge751_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_438_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.partselect_2ns_256ns_32ns_2_1_1_U18", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.partselect_2ns_256ns_32ns_2_1_1_U19", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.partset_128ns_128ns_2ns_32ns_128_1_1_U20", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182", "Parent" : "0", "Child" : ["22", "23", "24", "25"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge650_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_462_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.partselect_2ns_256ns_32ns_2_1_1_U23", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.partselect_2ns_256ns_32ns_2_1_1_U24", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.partset_128ns_128ns_2ns_32ns_128_1_1_U25", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188", "Parent" : "0", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge549_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_488_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.partselect_2ns_256ns_32ns_2_1_1_U28", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.partselect_2ns_256ns_32ns_2_1_1_U29", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.partset_128ns_128ns_2ns_32ns_128_1_1_U30", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194", "Parent" : "0", "Child" : ["32", "33", "34", "35"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge448_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_516_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.partselect_2ns_256ns_32ns_2_1_1_U33", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.partselect_2ns_256ns_32ns_2_1_1_U34", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.partset_128ns_128ns_2ns_32ns_128_1_1_U35", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200", "Parent" : "0", "Child" : ["37", "38", "39", "40"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge347_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_534_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.partselect_2ns_256ns_32ns_2_1_1_U38", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.partselect_2ns_256ns_32ns_2_1_1_U39", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.partset_128ns_128ns_2ns_32ns_128_1_1_U40", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206", "Parent" : "0", "Child" : ["42", "43", "44", "45"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge246_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_556_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.partselect_2ns_256ns_32ns_2_1_1_U43", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.partselect_2ns_256ns_32ns_2_1_1_U44", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.partset_128ns_128ns_2ns_32ns_128_1_1_U45", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212", "Parent" : "0", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge145_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_580_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.partselect_2ns_256ns_32ns_2_1_1_U48", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.partselect_2ns_256ns_32ns_2_1_1_U49", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.partset_128ns_128ns_2ns_32ns_128_1_1_U50", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218", "Parent" : "0", "Child" : ["52", "53", "54", "55"],
		"CDFG" : "NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "DNA_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "storemerge44_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_607_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.partselect_2ns_256ns_32ns_2_1_1_U53", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.partselect_2ns_256ns_32ns_2_1_1_U54", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.partset_128ns_128ns_2ns_32ns_128_1_1_U55", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"}]}


set ArgLastReadFirstWriteLatency {
	NeighborhoodMap_bit {
		ReadSeq {Type I LastRead 0 FirstWrite -1}
		RefSeq {Type I LastRead 0 FirstWrite -1}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1 {
		DNA_1 {Type I LastRead 0 FirstWrite -1}
		DNA_nsh_out_0_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2 {
		DNA_2 {Type I LastRead 0 FirstWrite -1}
		storemerge953_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3 {
		DNA_3 {Type I LastRead 0 FirstWrite -1}
		storemerge852_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4 {
		DNA_6 {Type I LastRead 0 FirstWrite -1}
		storemerge751_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5 {
		DNA_7 {Type I LastRead 0 FirstWrite -1}
		storemerge650_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6 {
		DNA_8 {Type I LastRead 0 FirstWrite -1}
		storemerge549_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7 {
		DNA_4 {Type I LastRead 0 FirstWrite -1}
		storemerge448_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8 {
		DNA_5 {Type I LastRead 0 FirstWrite -1}
		storemerge347_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9 {
		DNA_9 {Type I LastRead 0 FirstWrite -1}
		storemerge246_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10 {
		DNA_10 {Type I LastRead 0 FirstWrite -1}
		storemerge145_i_out {Type O LastRead -1 FirstWrite 0}}
	NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11 {
		DNA_11 {Type I LastRead 0 FirstWrite -1}
		storemerge44_i_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131", "Max" : "131"}
	, {"Name" : "Interval", "Min" : "131", "Max" : "131"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ReadSeq { ap_none {  { ReadSeq in_data 0 256 } } }
	RefSeq { ap_none {  { RefSeq in_data 0 256 } } }
}
