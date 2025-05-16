`include "risc.h"

module prgrm_fsm (
	input			clk,		// cpu clock
	input			reset,		// cpu reset
	output reg `state_type	current_state	// current state of fsm
);


reg `state_type		next_state;

always @ (current_state)
begin
  case (current_state)		// synthesis full_case
    `RESET_STATE: 
	next_state	= `FETCH_INSTR;
    `FETCH_INSTR:
	next_state	= `READ_OPS;
    `READ_OPS:
	next_state	= `EXECUTE;
    `EXECUTE:
	next_state	= `WRITEBACK;
    `WRITEBACK:
	next_state	= `FETCH_INSTR;
    default:
        next_state	= `RESET_STATE;
  endcase
end

always @ (posedge reset, posedge clk)
  if (reset)
    current_state       <= `RESET_STATE;
  else
    current_state       <= next_state;


endmodule
