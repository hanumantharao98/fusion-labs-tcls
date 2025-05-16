`include "risc.h"

module control (
	input		clk,			// cpu clock
			reset,			// reset to the cpu core

	input [31:0]	crnt_instrn,		// current instruction under execution;
						// from instruction latch

	input `state_type	current_state,

	input		neg_flag,
			carry_flag,
			zro_flag,

	output reg	latch_instr,		// enable for latching current instruction
	output reg	rd_oprnd_a,		// latch operand a into reg at i/p of alu
	output reg	rd_oprnd_b,		// latch operand b into reg at i/p of alu
	output reg	latch_flags,		// enable for storing flags, only occurs
						// for alu type instructions in execute clock
	output reg	latch_result,		// enable for latching o/p of alu into latch
	output reg	write_regc,		// write for operand c (in execute cycle)

	output reg	usedata_imm_or_regb,
						// select for mux between regfile portb data
						// and imm data (8-bit)

	output reg	usedata_imm_or_alu,	// select for mux between alu o/p and
						// and imm data to load to register file
	output reg	reset_aluregs,
						// used to reset alu i/ps on every
						// fetch_instrn state
	output reg	endofinstrn,		// used to dump psw and regfile contents into files at
						// end of every write_back cycle
	output reg	pushenbl,
	output reg	popenbl,
	output reg	out_valid		// to indicate that execution of data out
);



reg data_imm_or_alu, data_imm_or_regb;
reg take_branch;

reg neg, carry, zro, jmp;

always @ (crnt_instrn or neg_flag or carry_flag or zro_flag)
begin 

  if (crnt_instrn[25])
  begin
	neg	= ~neg_flag;
	carry	= ~carry_flag;
	zro	= ~zro_flag;
	jmp	= 1'b0;
  end
  else 
  begin
	neg	= neg_flag;
	carry	= carry_flag;
	zro	= zro_flag;
	jmp	= 1'b1;
  end

  if (crnt_instrn[23:16] == 8'b00000000)
	take_branch = neg;

  else if (crnt_instrn[23:16] == 8'b00000001)
	take_branch = zro;

  else if (crnt_instrn[23:16] == 8'b00111111)
	take_branch = jmp;

  else take_branch = 1'b0;

end

always @ (current_state or crnt_instrn or take_branch)
begin

  case (current_state)
    `RESET_STATE: begin
      pushenbl		= 1'b0;
      popenbl		= 1'b0;
      latch_flags	= 1'b0;
      latch_result	= 1'b0;
      rd_oprnd_a	= 1'b0;
      rd_oprnd_b	= 1'b0;
      data_imm_or_regb	= 1'b0;
      data_imm_or_alu	= 1'b0;
      latch_instr	= 1'b0;
      reset_aluregs	= 1'b0;
      write_regc	= 1'b0;
      out_valid		= 1'b0;
    end
    `FETCH_INSTR: begin 
      data_imm_or_regb  = 1'b0;
      data_imm_or_alu   = 1'b0;
      latch_instr       = 1'b1;
      reset_aluregs     = 1'b1;
      write_regc        = 1'b0;
      pushenbl          = 1'b0;
      popenbl           = 1'b0;
      latch_flags       = 1'b0;
      latch_result      = 1'b0;
      rd_oprnd_a        = 1'b0;
      rd_oprnd_b        = 1'b0;
      out_valid		= 1'b0;
    end
    `READ_OPS: begin
      latch_instr       = 1'b0;
      reset_aluregs     = 1'b0;
      pushenbl          = 1'b0;
      popenbl           = 1'b0;
      latch_flags       = 1'b0;
      latch_result      = 1'b0;
      write_regc        = 1'b0;
      out_valid		= 1'b0;

      // generation of mux selects for data path and operand read signals
      // asserting them in this state gives sufficient time for setup

      case (crnt_instrn[31:30])
        2'b00: begin		//    (type 0 instruction)
                		// these 2 can actually be don't cares for type 0
          data_imm_or_regb	= 1'b0;
          data_imm_or_alu	= 1'b0;
          rd_oprnd_a		= 1'b0;
          rd_oprnd_b		= 1'b0;
        end
        2'b01: begin		//    (type 1 instruction)
          data_imm_or_regb	= 1'b0;
          data_imm_or_alu	= 1'b0;
          rd_oprnd_a		= 1'b1;
          rd_oprnd_b		= 1'b1;
        end
        2'b10: begin		//    (type 2 instruction)
          data_imm_or_regb	= 1'b1;
          data_imm_or_alu	= 1'b0;
          rd_oprnd_a		= 1'b1;
          rd_oprnd_b		= 1'b1;
        end
        2'b11: begin		//    (type 3 instruction)
          data_imm_or_regb	= 1'b0;
          data_imm_or_alu	= 1'b1;
          rd_oprnd_a		= 1'b0;
          rd_oprnd_b		= 1'b1;
        end
      endcase
              
// added by anupam for reading the reg_file address given in instruction on user request
      if ( crnt_instrn[31:30] == 2'b00 & crnt_instrn[24] == 1'b1)
        rd_oprnd_a	= 1'b1;
    end 
    `EXECUTE: begin
	rd_oprnd_a       = 1'b0;
	rd_oprnd_b       = 1'b0;
	latch_instr      = 1'b0;
	reset_aluregs    = 1'b0;
	write_regc       = 1'b0;

	case (crnt_instrn[31:30])
          2'b00: begin	//    (type 0 instruction)
                        // these 2 can actually be don't cares for type 0
            data_imm_or_regb	= 1'b0;
            data_imm_or_alu	= 1'b0;
	  end

          2'b01: begin	//    (type 1 instruction)
            data_imm_or_regb	= 1'b0;
            data_imm_or_alu	= 1'b0;
	  end

          2'b10: begin	//    (type 2 instruction)
            data_imm_or_regb	= 1'b1;
            data_imm_or_alu	= 1'b0;
	  end

          2'b11: begin	//    (type 3 instruction)
            data_imm_or_regb	= 1'b0;
            data_imm_or_alu	= 1'b1;
	  end
        endcase

	if ( crnt_instrn[31:30] == 2'b00 & crnt_instrn[24] == 1'b1)
          out_valid = 1'b1;
	else
          out_valid = 1'b0;

	// push pc into stack (call conditional)

	if ((crnt_instrn[31:30] == 2'b00 & crnt_instrn[28] == 1'b1) & take_branch)
          pushenbl = 1'b1;
	else
          pushenbl = 1'b0;

	// pop from stack (return)

	if (crnt_instrn[31:30] == 2'b00 & crnt_instrn[27])
          popenbl = 1'b1;
	else
          popenbl = 1'b0;

	// latching flags for alu ops but not pass-thru ( ?? can this be same as latch_result ??)

	if (crnt_instrn[31:30] == 2'b01 | crnt_instrn[31:30] == 2'b10)
          latch_flags = 1'b1;
	else
          latch_flags = 1'b0;

	// latching result for alu and pass-thru

	if (crnt_instrn[31:30] == 2'b01 |
	    crnt_instrn[31:30] == 2'b10 |
	    crnt_instrn[31:30] == 2'b11)
          latch_result = 1'b1;
	else
          latch_result = 1'b0;
      end

    `WRITEBACK: begin
      latch_flags	= 1'b0;
      latch_result	= 1'b0;
      pushenbl		= 1'b0;
      popenbl		= 1'b0;
      rd_oprnd_a	= 1'b0;
      rd_oprnd_b	= 1'b0;
      latch_instr	= 1'b0;
      reset_aluregs	= 1'b0;
      out_valid		= 1'b0;

	// write result of alu op or the immediate data to reg_file

	if (crnt_instrn[31:30] != 2'b00)
          write_regc = 1'b1;
	else
          write_regc = 1'b0;

	case (crnt_instrn[31:30])
	  2'b00: begin	//    (type 0 instruction)
                        // these 2 can actually be don't cares for type 0
	    data_imm_or_regb	= 1'b0;
	    data_imm_or_alu	= 1'b0;
	  end

	  2'b01: begin	//    (type 1 instruction)
	    data_imm_or_regb	= 1'b0;
	    data_imm_or_alu	= 1'b0;
	  end

	  2'b10: begin	//    (type 2 instruction)
	    data_imm_or_regb	= 1'b1;
	    data_imm_or_alu	= 1'b0;
	  end

	  2'b11: begin	//    (type 3 instruction)
	    data_imm_or_regb	= 1'b0;
	    data_imm_or_alu	= 1'b1;
	  end
        endcase
    end
    default: begin
      data_imm_or_alu	= 1'b0;
      data_imm_or_regb	= 1'b0;
      latch_flags	= 1'b0;
      latch_instr	= 1'b0;
      latch_result	= 1'b0;
      out_valid		= 1'b0;
      popenbl		= 1'b0;
      pushenbl		= 1'b0;
      rd_oprnd_a	= 1'b0;
      rd_oprnd_b	= 1'b0;
      reset_aluregs	= 1'b0;
      write_regc	= 1'b0;
    end
  endcase
end

always @ (posedge reset, posedge clk)
begin
  if (reset) begin
    usedata_imm_or_regb	<= 1'b0;
    usedata_imm_or_alu  <= 1'b0;
  end
  else begin
    usedata_imm_or_regb <= data_imm_or_regb;
    usedata_imm_or_alu  <= data_imm_or_alu;
  end
end

// added to generate signals which control file dump

always @ (posedge clk)
begin
  if (current_state == `WRITEBACK)
    endofinstrn <= 1'b1;
  else
    endofinstrn <= 1'b0;
end

endmodule

