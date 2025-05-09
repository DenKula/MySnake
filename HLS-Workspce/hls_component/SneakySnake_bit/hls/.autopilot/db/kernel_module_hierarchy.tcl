set ModuleHierarchy {[{
"Name" : "SneakySnake_bit","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "NeighborhoodMap_bit_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_380_1_fu_158","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_380_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_400_2_fu_164","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_400_2","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_419_3_fu_170","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_419_3","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_438_4_fu_176","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_438_4","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_462_5_fu_182","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_462_5","ID" : "11","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_488_6_fu_188","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_488_6","ID" : "13","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_516_7_fu_194","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_516_7","ID" : "15","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_534_8_fu_200","ID" : "16","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_534_8","ID" : "17","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_556_9_fu_206","ID" : "18","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_556_9","ID" : "19","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_580_10_fu_212","ID" : "20","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_580_10","ID" : "21","Type" : "pipeline"},]},
		{"Name" : "grp_NeighborhoodMap_bit_Pipeline_VITIS_LOOP_607_11_fu_218","ID" : "22","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_607_11","ID" : "23","Type" : "pipeline"},]},]},
	{"Name" : "add_i_i2_loc_channel_U","ID" : "24","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_707_1_VITIS_LOOP_640_1","ID" : "25","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "max_count_one_bit_fu_240","ID" : "26","Type" : "pipeline"},
		{"Name" : "tmp_8_i_i_count_one_bit_fu_245","ID" : "27","Type" : "pipeline"},
		{"Name" : "max_2_count_one_bit_fu_250","ID" : "28","Type" : "pipeline"},
		{"Name" : "tmp_i_i_count_one_bit_fu_255","ID" : "29","Type" : "pipeline"},
		{"Name" : "max_5_count_one_bit_fu_260","ID" : "30","Type" : "pipeline"},
		{"Name" : "tmp_1_i_i_count_one_bit_fu_265","ID" : "31","Type" : "pipeline"},
		{"Name" : "max_8_count_one_bit_fu_270","ID" : "32","Type" : "pipeline"},
		{"Name" : "tmp_2_i_i_count_one_bit_fu_275","ID" : "33","Type" : "pipeline"},
		{"Name" : "max_12_count_one_bit_fu_280","ID" : "34","Type" : "pipeline"},
		{"Name" : "tmp_3_i_i_count_one_bit_fu_285","ID" : "35","Type" : "pipeline"},
		{"Name" : "max_11_count_one_bit_fu_290","ID" : "36","Type" : "pipeline"},]},]},
	{"Name" : "Block_entry_proc_proc_U0","ID" : "37","Type" : "sequential"},]
}]}