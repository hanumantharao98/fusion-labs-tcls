`include "risc.h"

module reg_file #(
	parameter use_rams = `reg_file_rams
	)(
	input		clk,		// cpu clock
	input		reset,		// reset for initialising registers

	input [6:0]	addr_a,		// address for port a
	input [6:0]	addr_b,		// address for port b
	input [6:0]	addr_c,		// address for port c

	input [63:0]	regport_c,	// wr data for port c

	input		write_regc,

	output [63:0]	regport_a,	// data out of port a
	output [63:0]	regport_b	// data out of port a
);



wire we_n;

reg  [6:0]	address1;
wire [6:0]	address2;
wire [15:0]	write_data [3:0];
wire [15:0]	read_data1 [3:0];
wire [15:0]	read_data2 [3:0];

integer i;

reg [63:0] reg_array [15:0];

generate
if (use_rams == 0) begin: no_rams
 always @ (posedge reset, posedge clk)
 // yes, this is only a 4-bit register bank (16 slots) ... should be 7 bits, but this would blow up risc_core
  if (reset)
    for (i = 15; i >= 0; i = i - 1)
      reg_array[i] <= 64'b0000000000000000;
  else begin
      if (write_regc)
        reg_array[addr_c] <= regport_c;
  end

assign  regport_a = reg_array[addr_a];
assign  regport_b = reg_array[addr_b];

end else begin: rams
 // reg_file write
 assign we_n = ! write_regc;

 always @ (write_regc)
  if (write_regc == 1)
    address1 = addr_c;
  else
    address1 = addr_a;

 assign address2 = addr_b;
 assign {write_data[3], write_data[2], write_data[1], write_data[0]} = regport_c;
 assign regport_a = {read_data1[3], read_data1[2], read_data1[1], read_data1[0]};
 assign regport_b = {read_data2[3], read_data2[2], read_data2[1], read_data2[0]};

  SRAMLP2RW128x16 reg_file_a_ram (
	.A1	(address1),
	.CE1	(clk),
	.WEB1	(we_n),
	.OEB1	(1'b1),
	.CSB1	(1'b0),
	.I1	(write_data[0]),
	.O1	(read_data1[0]),

	.A2	(address2),
	.CE2	(clk),
	.WEB2	(1'b1),
	.OEB2	(1'b0),
	.CSB2	(1'b0),
	.I2	(16'b1),
	.O2	(read_data2[0]),

	.LS1	(1'b0),
	.LS2	(1'b0),
	.DS1	(1'b0),
	.DS2	(1'b0),
	.SD	(1'b0)
  );

  SRAMLP2RW128x16 reg_file_b_ram (
	.A1	(address1),
	.CE1	(clk),
	.WEB1	(we_n),
	.OEB1	(1'b1),
	.CSB1	(1'b0),
	.I1	(write_data[1]),
	.O1	(read_data1[1]),

	.A2	(address2),
	.CE2	(clk),
	.WEB2	(1'b1),
	.OEB2	(1'b0),
	.CSB2	(1'b0),
	.I2	(16'b1),
	.O2	(read_data2[1]),

	.LS1	(1'b0),
	.LS2	(1'b0),
	.DS1	(1'b0),
	.DS2	(1'b0),
	.SD	(1'b0)
  );

  SRAMLP2RW128x16 reg_file_c_ram (
	.A1	(address1),
	.CE1	(clk),
	.WEB1	(we_n),
	.OEB1	(1'b1),
	.CSB1	(1'b0),
	.I1	(write_data[2]),
	.O1	(read_data1[2]),

	.A2	(address2),
	.CE2	(clk),
	.WEB2	(1'b1),
	.OEB2	(1'b0),
	.CSB2	(1'b0),
	.I2	(16'b1),
	.O2	(read_data2[2]),

	.LS1	(1'b0),
	.LS2	(1'b0),
	.DS1	(1'b0),
	.DS2	(1'b0),
	.SD	(1'b0)
  );

  SRAMLP2RW128x16 reg_file_d_ram (
	.A1	(address1),
	.CE1	(clk),
	.WEB1	(we_n),
	.OEB1	(1'b1),
	.CSB1	(1'b0),
	.I1	(write_data[3]),
	.O1	(read_data1[3]),

	.A2	(address2),
	.CE2	(clk),
	.WEB2	(1'b1),
	.OEB2	(1'b0),
	.CSB2	(1'b0),
	.I2	(16'b1),
	.O2	(read_data2[3]),

	.LS1	(1'b0),
	.LS2	(1'b0),
	.DS1	(1'b0),
	.DS2	(1'b0),
	.SD	(1'b0)
  );
end
endgenerate

endmodule
