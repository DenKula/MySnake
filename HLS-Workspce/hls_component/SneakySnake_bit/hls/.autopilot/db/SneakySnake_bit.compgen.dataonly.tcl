# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
ap_return { 
	dir o
	width 32
	depth 1
	mode ap_ctrl_chain
	offset 16
	offset_end 0
}
ReadLength { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
ReadSeq { 
	dir I
	width 256
	depth 1
	mode ap_none
	offset 32
	offset_end 67
}
RefSeq { 
	dir I
	width 256
	depth 1
	mode ap_none
	offset 68
	offset_end 103
}
EditThreshold { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
KmerSize { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


