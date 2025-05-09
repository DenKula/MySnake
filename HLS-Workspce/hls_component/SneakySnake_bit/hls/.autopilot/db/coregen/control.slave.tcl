dict set slaves control {ports {ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_continue {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1} ap_return {type ap_return width 32} ReadLength {type i_ap_none width 32} ReadSeq {type i_ap_none width 256} RefSeq {type i_ap_none width 256} EditThreshold {type i_ap_none width 32} KmerSize {type i_ap_none width 32}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
