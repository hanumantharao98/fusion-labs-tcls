`include "risc.h"

module prgrm_decode (
	input			zro_flag,	// "zero" flag from data_path
	input			carry_flag,	// "carry" flag from data_path
	input			neg_flag,	// "negative" flag from data_path

	input `state_type	current_state,	// current_state from fsm

	input [31:0]		crnt_instrn,	// current instruction under execution
						// from instruction latch

	output reg		incrmnt_pc,	// increments pc (in writeback cycle)
	output			ld_brnch_addr,	// load immediate add from instrn latch
						// into pc (in writeback cycle)
	output			ld_rtn_addr	// load return addr from stack into pc (in writeback cycle)
);


reg	brnch_addr, rtn_addr, take_branch;

reg	neg, carry, zro, jmp;

always @ (*)
begin

 //  determine if jmp on false or jmp on true

  if (crnt_instrn[25])
  begin
    neg		= ~neg_flag;
    carry	= ~carry_flag;
    zro		= ~zro_flag;
    jmp		= 1'b0;
  end
  else
  begin
    neg		= neg_flag;
    carry	= carry_flag;
    zro		= zro_flag;
    jmp		= 1'b1;
  end

  //  determines which of the conditions needs to be checked and whether to jmp

  if (crnt_instrn[23:16] == 8'b00000000)
    take_branch = neg;
  else if (crnt_instrn[23:16] == 8'b00000001)
    take_branch = zro;
  else if (crnt_instrn[23:16] == 8'b00000010)
    take_branch = carry;
  else if (crnt_instrn[23:16] == 8'b00111111)
    take_branch = jmp;
  else take_branch = 1'b0;

  case (current_state)
    `WRITEBACK: begin
      if (crnt_instrn[31:30] == 2'b00) // for jmp/call with condition check
      begin
        if ((crnt_instrn[29] | crnt_instrn[28]) & take_branch)
           brnch_addr	= 1'b1;
	else
           brnch_addr	= 1'b0;

        if (crnt_instrn[27])	// for return
           rtn_addr	= 1'b1;
	else
           rtn_addr	= 1'b0;
      end
      else
      begin
        brnch_addr	= 1'b0;
        rtn_addr	= 1'b0;
      end
			        // if not jmping or rtrning the increment pc
      if (rtn_addr | brnch_addr)
         incrmnt_pc	= 1'b0;
      else
         incrmnt_pc	= 1'b1;
    end

    default: begin
      incrmnt_pc	= 1'b0;	
      brnch_addr	= 1'b0;
      rtn_addr		= 1'b0;
    end
  endcase
end

assign ld_brnch_addr	= brnch_addr;
assign ld_rtn_addr	= rtn_addr;

endmodule

