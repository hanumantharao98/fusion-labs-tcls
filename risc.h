//------------------------------------------------------------------
// Original VHDL design:
//------------------------------------------------------------------
//                                                                --
//              1995, Synopsys (India) Pvt Ltd                    --
//                                                                --
//                 Entity : RISCTYPES.vhd                         --
//                                                                --
//                Project : RISC CPU                              --
//                                                                --
//                Authors : Hemant Mallapur                       --
//                                                                --
//                   Date : 25th August 1995                      --
//                                                                --
//               Function :                                       --
//                                                                --
//------------------------------------------------------------------
// Ported to Verilog by:
// Erich Whitney
// Senior Core Synthesis CAE
// Synopsys, Inc.
//------------------------------------------------------------------
// 2020: Updated to support RAMs and added a growable ALU
//       RAMs are from the SAED32 library
//       All module and port names are now lower-case
// Amin Shehata
// Senior Staff Applications Engineer
// Synopsys, Inc.


// risc_core - reg_file to use rams(1) or registers(0)
`define reg_file_rams 1
`define alu_depth 1


`define OP_ADD 			6'b000000
`define OP_ADD_PLUS_ONE 	6'b000001
`define OP_A 			6'b000010
`define OP_A_PLUS_ONE 		6'b000011
`define OP_AND 			6'b010001
`define OP_NOT_A_AND_B 		6'b010010
`define OP_B 			6'b010011
`define OP_NOT_A_AND_NOT_B 	6'b011000
`define OP_A_XNOR_B 		6'b011001
`define OP_NOT_A		6'b011010
`define OP_NOT_A_OR_B 		6'b011011
`define OP_SUB_MINUS_ONE 	6'b000100
`define OP_SUB 			6'b000101
`define OP_A_MINUS_ONE 		6'b000110
`define OP_A_AND_NOT_B 		6'b010100
`define OP_A_XOR_B 		6'b010110
`define OP_A_OR_B 		6'b010111
`define OP_NOT_B 		6'b011100
`define OP_A_OR_NOT_B 		6'b011101
`define OP_NAND 		6'b011110
`define OP_JTRUE 		6'b100000
`define OP_JFALSE 		6'b100010
`define OP_HALT 		6'b111111
`define OP_CALL			6'b010000
`define OP_RET 			6'b001000
`define OP_LDR 			6'b001001

`define OP_ALL_ZEROS 		6'b010000
`define OP_A_AND_B 		6'b010001
`define OP_NOTA_AND_B		6'b010010
`define OP_NOTA_AND_NOTB 	6'b011000
`define OP_NOTA 		6'b011010
`define OP_NOTA_OR_B 		6'b011011
`define OP_A_AND_NOTB		6'b010100

// Same operation as OP_A

`define OP_AP 			6'b000111
`define OP_APP 			6'b010101

`define OP_NOTB 		6'b011100
`define OP_A_OR_NOTB 		6'b011101
`define OP_A_NAND_B 		6'b011110
`define OP_ALL_ONES 		6'b011111

`define CODE_MEM_DEPTH 256

// Anupam added for outputting the result at RISC_TOP level
`define OP_DATA_OUT 		6'b000001


// Added for Control_FSM
`define state_type [2:0]
`define RESET_STATE	3'b000
`define FETCH_INSTR	3'b001
`define READ_OPS	3'b010
`define EXECUTE		3'b011
`define WRITEBACK	3'b100

