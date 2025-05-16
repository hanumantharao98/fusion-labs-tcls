`include "risc.h"

module risc_core #(
	parameter reg_file_use_rams = `reg_file_rams,
	parameter alu_shift_depth = `alu_depth
	)(
	input		clk,
	input		reset,
	input		scan_en,
	input		test_mode,
	input	[31:0]	instrn,
	output	[31:0]	xecutng_instrn,
	output		endofinstrn,
	output	[10:0]	psw,
	output		rd_instr,
	output	[63:0]	result_data,
	output		out_valid,
        output          half_full,
	output		stack_full
);


//as changed from 16 to 64 bit
wire	[63:0]	oprnd_a, oprnd_b, op_result, regport_a, regport_b, regport_c;
wire	[6:0]	addr_a, addr_b, addr_c;
wire	[5:0]	alu_op;
wire	alu_zro, alu_neg, alu_carry, zro_flag, neg_flag, carry_flag,
	psw_zro, pushenbl, popenbl, psw_neg, psw_carry,
	write_regc, rd_oprnd_a, rd_oprnd_b, latch_instr, latch_flags,
	latch_result, usedata_imm_or_regb, usedata_imm_or_alu,
	reset_aluregs;

wire	`state_type	current_state;

wire	[31:0]	crnt_instrn_1, crnt_instrn_2;
wire	[11:0]	pushdatain, popdataout;
wire	[7:0]	return_addr, imm_addr;
wire	[7:0]	pc;
// begin

// connectivity definition of components

assign pushdatain 	=  {8'b00000000, zro_flag, neg_flag, carry_flag, pc};
assign return_addr 	=  popdataout[7:0];
assign psw_zro 		=  popdataout[10];
assign psw_neg 		=  popdataout[9];
assign psw_carry 	=  popdataout[8];
assign alu_op 		=  crnt_instrn_1[31:24];
assign addr_b 		=  crnt_instrn_1[13:7];
assign addr_c 		=  crnt_instrn_1[6:0];
assign psw 		=  {pc, zro_flag, neg_flag, carry_flag};
assign rd_instr 	=  latch_instr;
assign xecutng_instrn 	=  crnt_instrn_1;
assign result_data 	=  regport_a;

// entity instantiations

alu 	#(
	.shift_depth	(alu_shift_depth) )
	alu (
	.clk		(clk),
	.reset		(reset),
	.oprnd_a	(oprnd_a),
	.oprnd_b	(oprnd_b),
	.alu_op		(alu_op),
	.latch_result	(latch_result),
	.latch_flags	(latch_flags),
	.lachd_result	(op_result),
	.zro_flag	(alu_zro),
	.neg_flag	(alu_neg),
	.carry_flag	(alu_carry)
);

control control (
	.clk 		(clk),
	.reset		(reset),
	.crnt_instrn 	(crnt_instrn_2),
	.current_state	(current_state),
	.neg_flag	(neg_flag),
	.carry_flag	(carry_flag),
	.zro_flag	(zro_flag),
	.latch_instr	(latch_instr),
	.rd_oprnd_a	(rd_oprnd_a),
	.rd_oprnd_b	(rd_oprnd_b),
	.latch_flags	(latch_flags),
	.latch_result	(latch_result),
	.write_regc 	(write_regc),
	.usedata_imm_or_regb 	(usedata_imm_or_regb),
	.usedata_imm_or_alu 	(usedata_imm_or_alu),
	.reset_aluregs	(reset_aluregs),
	.endofinstrn 	(endofinstrn),
	.pushenbl 	(pushenbl),
	.popenbl 	(popenbl),
	.out_valid 	(out_valid),
        .half_full      (half_full)
);

data_path data_path (
	.clk 		(clk),
	.reset 		(reset),
	.reset_aluregs 	(reset_aluregs),
	.rd_oprnd_a 	(rd_oprnd_a),
	.rd_oprnd_b 	(rd_oprnd_b),
	.usedata_imm_or_regb 	(usedata_imm_or_regb),
	.usedata_imm_or_alu 	(usedata_imm_or_alu),
	.latch_flags 	(latch_flags),
	.alu_zro 	(alu_zro),
	.alu_neg 	(alu_neg),
	.alu_carry 	(alu_carry),
	.psw_zro 	(psw_zro),
	.psw_neg 	(psw_neg),
	.psw_carry 	(psw_carry),
	.crnt_instrn 	(crnt_instrn_2),
	.regport_a 	(regport_a),
	.regport_b 	(regport_b),
	.op_result 	(op_result),
	.zro_flag 	(zro_flag),
	.neg_flag 	(neg_flag),
	.carry_flag 	(carry_flag),
	.addr_a 	(addr_a),
	.oprnd_a 	(oprnd_a),
	.oprnd_b 	(oprnd_b),
	.regport_c 	(regport_c)
);

instrn_lat instrn_lat (
	.clk 		(clk),
	.instrn 	(instrn),
	.latch_instr 	(latch_instr),
	.crnt_instrn_1	(crnt_instrn_1),
	.crnt_instrn_2	(crnt_instrn_2)
);

prgrm_cnt_top prgrm_cnt_top (
	.clk		(clk),
	.reset  	(reset),
	.crnt_instrn	(crnt_instrn_2),
	.zro_flag	(zro_flag),
	.carry_flag	(carry_flag),
	.neg_flag	(neg_flag),
	.return_addr 	(return_addr),
	.current_state	(current_state),
	.pc 		(pc)
);

reg_file #(
	.use_rams	(reg_file_use_rams) )
	reg_file (
	.clk 		(clk),
	.reset	 	(reset),
	.addr_a 	(addr_a),
	.addr_b 	(addr_b),
	.addr_c 	(addr_c),
	.regport_c 	(regport_c),
	.write_regc 	(write_regc),
	.regport_a 	(regport_a),
	.regport_b 	(regport_b)
);

stack_top stack_top (
	.clk 		(clk),
	.reset	 	(reset),
	.pushenbl 	(pushenbl),
	.popenbl 	(popenbl),
	.pushdatain 	(pushdatain),
	.popdataout 	(popdataout),
	.stack_full 	(stack_full)
);

endmodule

