module stack_top (
	input		clk,		// clock
	input		reset,		// reset
	input		pushenbl,	// push cmd for stack
	input		popenbl,	// pop cmd for stack

	input  [11:0]	pushdatain,	// data to be pushed into the stack

	output [11:0]	popdataout,	// data popped out of the stack
	output		stack_full	// stack is full
);


wire [0:2]	tos;
wire		stack_full_int;

stack_fsm stack_fsm (
	.reset		(reset),
	.clk		(clk),
	.pushenbl	(pushenbl),
	.popenbl	(popenbl),
	.tos		(tos),
	.stack_full	(stack_full_int)
);

stack_mem stack_mem1 (
	.clk		(clk),
	.pushenbl	(pushenbl),
	.popenbl	(popenbl),
	.stack_full 	(stack_full_int),
	.tos		(tos),
	.pushdatain	(pushdatain[3:0]),
	.popdataout	(popdataout[3:0])
);

stack_mem stack_mem2 (
	.clk		(clk),
	.pushenbl	(pushenbl),
	.popenbl	(popenbl),
	.stack_full 	(stack_full_int),
	.tos		(tos),
	.pushdatain	(pushdatain[7:4]),
	.popdataout	(popdataout[7:4])
);

stack_mem stack_mem3 (
	.clk		(clk),
	.pushenbl	(pushenbl),
	.popenbl	(popenbl),
	.stack_full 	(stack_full_int),
	.tos		(tos),
	.pushdatain	(pushdatain[11:8]),
	.popdataout	(popdataout[11:8])
);

assign stack_full = stack_full_int;

endmodule
