`include "risc.h"

module  data_path ( 
	input		clk,			// clock
	input		reset,			// reset for flags
	input		reset_aluregs,		// reset alu port registers
	input		rd_oprnd_a,		// from control;commands to read operand a & b
	input		rd_oprnd_b,		// into regs at i/p of alu
	input		usedata_imm_or_regb,	// selects immediate data(8-bit) from instrn
						// latch or from reg file portb for alu input
	input		usedata_imm_or_alu,	// selects immediate data(16-bit) from instrn
						// latch or from alu result
	input		latch_flags,		// enable for latching flags
	input		alu_zro,		// alu o/p
	input		alu_neg,		// alu o/p
	input		alu_carry,		// alu o/p
	input		psw_zro,		// stack value of zro flag
	input		psw_neg,		// stack value of neg flag
	input		psw_carry,		// stack value of carry flag

	input [31:0]	crnt_instrn,		// instrn under execution from instrn_lat

	input [63:0]	regport_a,		// regfile porta data o/p;latched & fed to alu
	input [63:0]	regport_b,		// regfile portb data o/p;latched & fed to alu
	input [63:0]	op_result,		// alu result; latched, then  muxed with
						// dataimmediate from instrn_lat to feed
						// the regfile as regport_c

	output reg	zro_flag,		// latched flag
	output reg	neg_flag,		// latched flag
	output reg	carry_flag,		// latched flag (not implemented )

	output reg [6:0] addr_a,			// to calculate address for reg_file port a

	output reg [63:0] oprnd_a,		// fed to alu porta
	output reg [63:0] oprnd_b,		// fed to alu portb
	output reg [63:0] regport_c		// i/p to regfile portc
);


reg	pswl_zro, pswl_carry, pswl_neg;


always @ (posedge clk)
begin
// register at alu input a
  if (reset_aluregs)
    oprnd_a <= 64'b0;
  else if (rd_oprnd_a)
    oprnd_a <= regport_a;
// register at alu input b (muxing with imm data included here)
  if (reset_aluregs)
    oprnd_b <= 64'b0;
  else if (rd_oprnd_b) begin
    if (usedata_imm_or_regb)
      oprnd_b <= {crnt_instrn,crnt_instrn};
    else if (~usedata_imm_or_regb)
      oprnd_b <= regport_b;
  end
end

always @ (posedge reset, posedge clk)
  if (reset) begin
   pswl_zro <= 1'b0;
   pswl_neg <= 1'b0;
   pswl_carry <= 1'b0;
  end
  else begin
    if (latch_flags) begin
      pswl_zro <= psw_zro;
      pswl_neg <= psw_neg;
      pswl_carry <= psw_carry;
    end
  end

// mux between latched alu result and immediate data to be loaded into regfile

always @ (*)
begin
       if (usedata_imm_or_alu)
           regport_c = {crnt_instrn,crnt_instrn};
       else
           regport_c = op_result;
end

// muxing of flags betn popped and alu outputs - return instrn alone requires popped flags

always @ (*)
begin
        if (crnt_instrn[7:0] == 8'b00001000) begin
            zro_flag   = pswl_zro;
            neg_flag   = pswl_neg;
            carry_flag = pswl_carry;
	end
        else begin
            zro_flag   = alu_zro;
            neg_flag   = alu_neg;
            carry_flag = alu_carry;
        end
end

// calculate address for port_a of reg_file

always @ (*)
begin
       if (crnt_instrn[7:6] == 2'b00 & crnt_instrn[4] == 1'b1)
          addr_a = crnt_instrn[13:7];
       else
          addr_a = crnt_instrn[20:14];
end

endmodule
