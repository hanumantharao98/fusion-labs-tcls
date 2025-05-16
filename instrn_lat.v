module instrn_lat (
	input		clk,		// cpu clock
	input [31:0]	instrn,		// instrn for
	input		latch_instr,	// enable for latching instruction
	output reg [31:0]	crnt_instrn_1,
	output reg [31:0]	crnt_instrn_2	// instrn under/about to be processed
);


always @ (posedge clk)
begin
  if (latch_instr) begin
    crnt_instrn_1 <= instrn;
    crnt_instrn_2 <= instrn;
  end
end

endmodule
