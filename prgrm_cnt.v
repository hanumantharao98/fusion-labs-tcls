module  prgrm_cnt (
	input		clk,		// cpu clock
	input		reset,		// reset for the pc
	input		incrmnt_pc,	// increment pc
	input		ld_brnch_addr,	// load jmp/call addr from instruction
	input		ld_rtn_addr,	// load return addr
	input [7:0]	imm_addr,	// immediate addr for jmp/call
	input [7:0]	return_addr,	// return addr from stack

	output [7:0]	pc		// addr of instruction to be fetched in
					// the next fetch cycle
);


reg [7:0] pcint;

always @ (posedge reset, posedge clk)
  if (reset)
    pcint <= 8'b00000000;
  else begin
    if (incrmnt_pc)		// occurs in writeback cycle
      pcint <= pcint + 1;
    else if (ld_rtn_addr)		// occurs in writeback cycle
      pcint <= return_addr;
    else if (ld_brnch_addr)	// occurs in writeback cycle
      pcint <= imm_addr;
  end


assign pc = pcint;

endmodule
