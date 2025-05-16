`include "risc.h"

module prgrm_cnt_top (
	input			clk,
	input			reset,
	input	[31:0]		crnt_instrn,	// current executing inst
	input			zro_flag,	// flags from alu or stack
	input			carry_flag,
	input			neg_flag,
	input	[7:0]		return_addr,
	output	`state_type	current_state,	// currentstate from control fsm
	output	[7:0]		PC
);

wire  			incrmnt_pc, ld_brnch_addr, ld_rtn_addr;
// wire `state_type 	currentstate; 

prgrm_fsm prgrm_fsm (
	.clk		(clk),
	.reset		(reset),
	.current_state 	(current_state)
);

prgrm_decode prgrm_decode (
	.zro_flag	(zro_flag),
	.carry_flag	(carry_flag),
	.neg_flag	(neg_flag),
	.current_state	(current_state),
	.crnt_instrn	(crnt_instrn),
	.incrmnt_pc	(incrmnt_pc),
	.ld_brnch_addr	(ld_brnch_addr),
	.ld_rtn_addr	(ld_rtn_addr)
);

prgrm_cnt prgrm_cnt (
	.clk		(clk),
	.reset		(reset),
	.incrmnt_pc	(incrmnt_pc),
	.ld_brnch_addr	(ld_brnch_addr),
	.ld_rtn_addr	(ld_rtn_addr),
	.imm_addr	(crnt_instrn[7:0]),
	.return_addr	(return_addr),
	.pc		(PC)
);


endmodule
