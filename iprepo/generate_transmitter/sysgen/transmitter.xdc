set rateCetransmitter320 transmitter_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellstransmitter320 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCetransmitter320/Q]] IS_ENABLE]]
set rateCetransmitter1280 transmitter_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellstransmitter1280 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCetransmitter1280/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellstransmitter320 -to $rateCellstransmitter320 -setup 320
set_multicycle_path -from $rateCellstransmitter320 -to $rateCellstransmitter320 -hold 319
set_multicycle_path -from $rateCellstransmitter320 -to $rateCellstransmitter1280 -setup 320
set_multicycle_path -from $rateCellstransmitter320 -to $rateCellstransmitter1280 -hold 319
set_multicycle_path -from $rateCellstransmitter1280 -to $rateCellstransmitter320 -setup 320
set_multicycle_path -from $rateCellstransmitter1280 -to $rateCellstransmitter320 -hold 319
set_multicycle_path -from $rateCellstransmitter1280 -to $rateCellstransmitter1280 -setup 1280
set_multicycle_path -from $rateCellstransmitter1280 -to $rateCellstransmitter1280 -hold 1279
