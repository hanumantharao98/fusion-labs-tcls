module  stack_fsm ( 
	input		clk,		// clock
	input		reset,		// reset
	input		pushenbl,	// push cmd for stack
	input		popenbl,	// pop cmd for stack

	output [0:2]	tos,		// stack address
	output reg	stack_full	// stack is full
);


`define stack_state [1:0]
`define EMPTY	2'b00
`define NORMAL	2'b01
`define FULL	2'b11
`define ERROR	2'b10

reg `stack_state	crnt_stack, next_stack;
reg [0:2]		next_tos, tos_int;

always @ (*)
begin
  if (pushenbl & popenbl) begin
    next_stack	= `ERROR;
    next_tos	= 3'b000;
  end
  else
    case (crnt_stack)
      `EMPTY: begin
	if (pushenbl) begin  
	  next_stack	= `NORMAL;
	  next_tos	= 3'b001;
	end
	else if (popenbl) begin
	  next_stack	= `ERROR;
	  next_tos	= 3'b000;
	end
	else begin
	  next_stack	= `EMPTY;
	  next_tos	= 3'b000;
	end
      end
      `NORMAL: begin
	if (pushenbl) begin
	  if (tos_int == 3'b111) begin
	    next_stack	= `FULL;
	    next_tos	= 3'b111;
	  end
	  else begin
	    next_stack	= `NORMAL;
	    next_tos	= tos_int + 1;
	  end 
	end
	else if (popenbl) begin
	  if (tos_int == 3'b001) begin
	    next_stack	= `EMPTY;
	    next_tos	= 3'b000;
	  end
	  else begin
	    next_stack	= `NORMAL;
	    next_tos	= tos_int - 1;
	  end
	end
	else begin
	  next_stack	= `NORMAL;
	  next_tos	= tos_int;
	end
      end
      `FULL: begin
	if (pushenbl) begin
	  next_stack	= `ERROR;
	  next_tos	= 3'b111;
	end
	else if (popenbl) begin
	  next_stack	= `NORMAL;
	  next_tos	= 3'b111;
	end
	else begin
	  next_stack	= `FULL;
	  next_tos	= 3'b111;
	end 
      end
      `ERROR: begin
	 next_stack	= `ERROR ;
	 next_tos	= 3'b111;
      end
    endcase
end

always @ (posedge reset, posedge clk)
  if (reset) begin
    crnt_stack	<= `EMPTY;
    tos_int	<= 3'b000;
  end
  else begin
    crnt_stack	<= next_stack;
    tos_int	<= next_tos;
    if (crnt_stack == `FULL & tos_int == 3'b111)
      stack_full <= 1'b1;
    else
      stack_full <= 1'b0; 
  end


assign tos = tos_int;

endmodule
