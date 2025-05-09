set moduleName SneakySnake_bit
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 18
set C_modelName {SneakySnake_bit}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ ReadLength int 32 unused {axi_slave 0}  }
	{ ReadSeq int 256 regular {axi_slave 0}  }
	{ RefSeq int 256 regular {axi_slave 0}  }
	{ EditThreshold int 32 unused {axi_slave 0}  }
	{ KmerSize int 32 unused {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ReadLength", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "ReadSeq", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 256, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":67}} , 
 	{ "Name" : "RefSeq", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 256, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":103}} , 
 	{ "Name" : "EditThreshold", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "KmerSize", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"SneakySnake_bit","role":"start","value":"0","valid_bit":"0"},{"name":"SneakySnake_bit","role":"continue","value":"0","valid_bit":"4"},{"name":"SneakySnake_bit","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ReadLength","role":"data","value":"24"},{"name":"ReadSeq","role":"data","value":"32"},{"name":"RefSeq","role":"data","value":"68"},{"name":"EditThreshold","role":"data","value":"104"},{"name":"KmerSize","role":"data","value":"112"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"SneakySnake_bit","role":"start","value":"0","valid_bit":"0"},{"name":"SneakySnake_bit","role":"done","value":"0","valid_bit":"1"},{"name":"SneakySnake_bit","role":"idle","value":"0","valid_bit":"2"},{"name":"SneakySnake_bit","role":"ready","value":"0","valid_bit":"3"},{"name":"SneakySnake_bit","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "58", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
		"CDFG" : "SneakySnake_bit",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "172", "EstimateLatencyMax" : "172",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "NeighborhoodMap_bit_U0"}],
		"OutputProcess" : [
			{"ID" : "82", "Name" : "Block_entry_proc_proc_U0"}],
		"Port" : [
			{"Name" : "ReadLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "ReadSeq", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "NeighborhoodMap_bit_U0", "Port" : "ReadSeq"}]},
			{"Name" : "RefSeq", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "NeighborhoodMap_bit_U0", "Port" : "RefSeq"}]},
			{"Name" : "EditThreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "KmerSize", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0", "Parent" : "0", "Child" : ["3", "8", "13", "18", "23", "28", "33", "38", "43", "48", "53"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158", "Parent" : "2", "Child" : ["4", "5", "6", "7"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.partselect_2ns_256ns_32ns_2_1_1_U1", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.partselect_2ns_256ns_32ns_2_1_1_U2", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.partset_128ns_128ns_2ns_32ns_128_1_1_U3", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164", "Parent" : "2", "Child" : ["9", "10", "11", "12"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.partselect_2ns_256ns_32ns_2_1_1_U8", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.partselect_2ns_256ns_32ns_2_1_1_U9", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.partset_128ns_128ns_2ns_32ns_128_1_1_U10", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170", "Parent" : "2", "Child" : ["14", "15", "16", "17"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.partselect_2ns_256ns_32ns_2_1_1_U13", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.partselect_2ns_256ns_32ns_2_1_1_U14", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.partset_128ns_128ns_2ns_32ns_128_1_1_U15", "Parent" : "13"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176", "Parent" : "2", "Child" : ["19", "20", "21", "22"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.partselect_2ns_256ns_32ns_2_1_1_U18", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.partselect_2ns_256ns_32ns_2_1_1_U19", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.partset_128ns_128ns_2ns_32ns_128_1_1_U20", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182", "Parent" : "2", "Child" : ["24", "25", "26", "27"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.partselect_2ns_256ns_32ns_2_1_1_U23", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.partselect_2ns_256ns_32ns_2_1_1_U24", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.partset_128ns_128ns_2ns_32ns_128_1_1_U25", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188", "Parent" : "2", "Child" : ["29", "30", "31", "32"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.partselect_2ns_256ns_32ns_2_1_1_U28", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.partselect_2ns_256ns_32ns_2_1_1_U29", "Parent" : "28"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.partset_128ns_128ns_2ns_32ns_128_1_1_U30", "Parent" : "28"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194", "Parent" : "2", "Child" : ["34", "35", "36", "37"],
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
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.partselect_2ns_256ns_32ns_2_1_1_U33", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.partselect_2ns_256ns_32ns_2_1_1_U34", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.partset_128ns_128ns_2ns_32ns_128_1_1_U35", "Parent" : "33"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200", "Parent" : "2", "Child" : ["39", "40", "41", "42"],
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
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.partselect_2ns_256ns_32ns_2_1_1_U38", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.partselect_2ns_256ns_32ns_2_1_1_U39", "Parent" : "38"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.partset_128ns_128ns_2ns_32ns_128_1_1_U40", "Parent" : "38"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206", "Parent" : "2", "Child" : ["44", "45", "46", "47"],
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.partselect_2ns_256ns_32ns_2_1_1_U43", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.partselect_2ns_256ns_32ns_2_1_1_U44", "Parent" : "43"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.partset_128ns_128ns_2ns_32ns_128_1_1_U45", "Parent" : "43"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212", "Parent" : "2", "Child" : ["49", "50", "51", "52"],
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
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.partselect_2ns_256ns_32ns_2_1_1_U48", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.partselect_2ns_256ns_32ns_2_1_1_U49", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.partset_128ns_128ns_2ns_32ns_128_1_1_U50", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218", "Parent" : "2", "Child" : ["54", "55", "56", "57"],
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
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.partselect_2ns_256ns_32ns_2_1_1_U53", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.partselect_2ns_256ns_32ns_2_1_1_U54", "Parent" : "53"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.partset_128ns_128ns_2ns_32ns_128_1_1_U55", "Parent" : "53"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NeighborhoodMap_bit_U0.grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0", "Parent" : "0", "Child" : ["59", "61", "63", "65", "67", "69", "71", "73", "75", "77", "79", "81"],
		"CDFG" : "Loop_VITIS_LOOP_707_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_707_1_VITIS_LOOP_640_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_count_one_bit_fu_240", "Parent" : "58", "Child" : ["60"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_count_one_bit_fu_240.sparsemux_15_6_3_1_1_U60", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_8_i_i_count_one_bit_fu_245", "Parent" : "58", "Child" : ["62"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_8_i_i_count_one_bit_fu_245.sparsemux_15_6_3_1_1_U60", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_2_count_one_bit_fu_250", "Parent" : "58", "Child" : ["64"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_2_count_one_bit_fu_250.sparsemux_15_6_3_1_1_U60", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_i_i_count_one_bit_fu_255", "Parent" : "58", "Child" : ["66"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_i_i_count_one_bit_fu_255.sparsemux_15_6_3_1_1_U60", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_5_count_one_bit_fu_260", "Parent" : "58", "Child" : ["68"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_5_count_one_bit_fu_260.sparsemux_15_6_3_1_1_U60", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_1_i_i_count_one_bit_fu_265", "Parent" : "58", "Child" : ["70"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_1_i_i_count_one_bit_fu_265.sparsemux_15_6_3_1_1_U60", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_8_count_one_bit_fu_270", "Parent" : "58", "Child" : ["72"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_8_count_one_bit_fu_270.sparsemux_15_6_3_1_1_U60", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_2_i_i_count_one_bit_fu_275", "Parent" : "58", "Child" : ["74"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_2_i_i_count_one_bit_fu_275.sparsemux_15_6_3_1_1_U60", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_12_count_one_bit_fu_280", "Parent" : "58", "Child" : ["76"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_12_count_one_bit_fu_280.sparsemux_15_6_3_1_1_U60", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_3_i_i_count_one_bit_fu_285", "Parent" : "58", "Child" : ["78"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.tmp_3_i_i_count_one_bit_fu_285.sparsemux_15_6_3_1_1_U60", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_11_count_one_bit_fu_290", "Parent" : "58", "Child" : ["80"],
		"CDFG" : "count_one_bit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_seq_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.max_11_count_one_bit_fu_290.sparsemux_15_6_3_1_1_U60", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_707_1_proc_U0.flow_control_loop_delay_pipe_U", "Parent" : "58"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry_proc_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry_proc_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_nsh_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shl_one_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shl_two_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shl_three_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shl_four_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shl_five_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shr_one_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shr_two_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shr_three_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shr_four_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNA_shr_five_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_i_i2_loc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SneakySnake_bit {
		ReadLength {Type I LastRead -1 FirstWrite -1}
		ReadSeq {Type I LastRead 0 FirstWrite -1}
		RefSeq {Type I LastRead 0 FirstWrite -1}
		EditThreshold {Type I LastRead -1 FirstWrite -1}
		KmerSize {Type I LastRead -1 FirstWrite -1}}
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
		storemerge44_i_out {Type O LastRead -1 FirstWrite 0}}
	Loop_VITIS_LOOP_707_1_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	count_one_bit {
		input_seq_val {Type I LastRead 0 FirstWrite -1}}
	Block_entry_proc_proc {
		p_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "172", "Max" : "172"}
	, {"Name" : "Interval", "Min" : "132", "Max" : "132"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
