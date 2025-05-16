module stack_mem ( 
	input			clk,		// clock
	input			pushenbl,	// push cmd for stack
	input			popenbl,	// pop cmd for stack
	input			stack_full,	// stack is full flag
	input		[0:2]	tos,
	input		[3:0]	pushdatain,	// data to be pushed into the stack
	output	reg	[3:0]	popdataout	// data popped out of the stack
);


reg [3:0]	stack_mem [0:7];
reg [0:2]	pop_address;

// generate correct address for pop

always @ (*)
begin
  if (stack_full)
    pop_address = tos;
  else
    pop_address = tos - 1;
end

// stack memory writes; described as a set of registers (edge sensitive)

always @ (posedge clk)
begin
  if (pushenbl)
    stack_mem[tos] <= pushdatain;
end

// stack memory reads; the output is latched every clock edge

always @ (posedge clk)
begin
  if (popenbl)
    popdataout <= stack_mem[pop_address];
end

endmodule
